# mapping of the index with individual documents
curl -X PUT "localhost:9200/india_states_geoshape" -H 'Content-Type: application/json' -d'
{
    "mappings": {
        "_doc": {
            "properties": {
                "location": {
                    "type": "geo_shape"
                }
            }
        }
    }
}
'
# Hydrebad document
curl -X PUT "localhost:9200/india_states_geoshape/_doc/1005?routing=1&refresh" -H 'Content-Type: application/json' -d'
{
    "name": "Hyderabad",
    "state": "Telangana",
    "location": {
        "type": "point",
        "coordinates": [78.474444,17.375278]
    }
}
'
# Delhi Document
curl -X PUT "localhost:9200/india_states_geoshape/_doc/1003?routing=1&refresh" -H 'Content-Type: application/json' -d'
{
    "name": "Delhi",
    "state": "Delhi",
    "location": {
        "type": "point",
        "coordinates": [77.216667, 28.666667]
    }
}
'


# mapping for the reference shapes index
curl -X PUT "localhost:9200/reference-quad" -H 'Content-Type: application/json' -d'
{
    "mappings": {
        "_doc": {
            "properties": {
                "location": {
                    "type": "geo_shape"
                }
            }
        }
    }
}
'


# southern quadliateral shape
curl -X PUT "localhost:9200/reference-quad/_doc/south-quad" -H 'Content-Type: application/json' -d'
{
    "location": {
        "type": "polygon",
        "coordinates" : [[73.866667,18.533333],[83.3,17.7],[80.283333,13.083333],[77.583333,12.983333],[73.866667,18.533333]]
    }
}
'
      

# northern quadliateral shape
curl -X PUT "localhost:9200/reference-quad/_doc/north-quad" -H 'Content-Type: application/json' -d'
{
    "location": {
        "type": "polygon",
        "coordinates" : [[75.85,30.9],[75.5925,25.731111],[77.4,23.266667],[80.916667,26.85],[75.85,30.9]]
    }
}
'

