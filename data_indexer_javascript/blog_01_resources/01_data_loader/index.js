var async = require('async');
var esClient = require('./esClient');
var configs = require('./configs')
var mockData = require('./mock_data');



var dataFormatter = function(){
    var finalData = [];
    for(var i=0;i<(mockData.dataArray).length;i++){
        var indexMetaData = {
            index : {
            _index: configs.indexName,
            _type: configs.typeName,
            _id: i
          }
        }
        finalData.push(indexMetaData);
        finalData.push(mockData.dataArray[i]);
    }
    
    esClient.esBulkIndex(finalData);
    // console.log('final data.....',JSON.stringify(finalData))
    
}

dataFormatter();
