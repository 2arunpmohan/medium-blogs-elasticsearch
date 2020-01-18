/**fetches the json from the provided path */
let SampleJson  = require('./medium-blogs-elasticsearch/es-index-sorting/MOCK_DATA.json');
var fs = require('fs');
var execSync = require('child_process').execSync;

/**to format index key  */
let result = [];
for (const key in SampleJson) {
    if (SampleJson.hasOwnProperty(key)) {
        const element = SampleJson[key];
        result.push({index:{_id:key}});
        result.push(element);
    }
}
/**cmd line to convert json to nd json */
var cmd = "cat converted.json | jq -c '.[]' > es-index-ndjson.json";

/**writting the converted file  */
let data = JSON.stringify(result);
writeFile = async ()=>{
    let x = await fs.writeFileSync('converted.json', data, (err) => {
        if (err) throw err;
        console.log('success file written')
    });
    return x;
}

/**cmd executed on succesful creation of converted file */
if(writeFile()){
    console.log(execSync(cmd));
    console.log('succesfully created file.....')
}