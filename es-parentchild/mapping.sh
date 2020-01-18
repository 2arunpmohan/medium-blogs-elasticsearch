curl -X PUT "localhost:9200/test-index" -H 'Content-Type: application/json' -d'
{
  "mappings": {
    "_doc": {
      "properties": {
        "joinField": { 
          "type": "join",
          "relations": {
            "trainer": "student" 
          }
        }
      }
    }
  }
}
'
