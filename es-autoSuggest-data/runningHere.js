var async = require('async');
var esClient = require('./esClient');
var configs = require('./configs')
var mockData = require('./mock_data');



var dataFormatter = function(){
    var finalData = [];
    for(var i=0;i<(mockData.dataArray).length;i++){
        var indexMetaData = {
            index : {
            _index: 'autosuggest',
            _type: 'mytype',
            _id: i
          }
        }
        finalData.push(indexMetaData);
        var temp = mockData.dataArray[i]['city']
//        console.log('meta data...',JSON.stringify(indexMetaData))
        temp1 = temp.split(/[ ,]+/);
//        console.log('data...',temp);
        var input = temp1;
        var output = temp;
        var data = {
            fullName : mockData.dataArray[i]['fullName'],
            city: temp,
            citySuggest : {
                input : temp1,
                output : temp
            }
        }
        finalData.push(data);
    }
    
    esClient.esBulkIndex(finalData);
    console.log('final data.....',JSON.stringify(finalData))
    
}

dataFormatter();
