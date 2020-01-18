var async = require('async');
var elasticsearch = require('elasticsearch');
var configs = require('./configs')
var mockData = require('./mock_data');

//console.log('data is ...',mockData.dataArray)

var esClient = new elasticsearch.Client({
    host : configs.url
})

module.exports = {
    
    esSuggestIndex : function(query){
        
        esClient.suggest({
            index : configs.indexName,
            body : query
            
        },function(error,response){
            if(error){
                console.log('error in suggest query...',error)
            }
            else{
                console.log('response for suggest query..',response)
            }
        })
    },
    
    esBulkIndex : function(data){
        
        esClient.bulk({
            body : data
        },function(error,response){
            if(error){
                console.log('error',error)
            }
            else{
                console.log('response',response)
            }
        }
        
        )
    }

}