curl -X PUT "localhost:9200/india_states_data" -H 'Content-Type: application/json' -d'
{
  "settings": {
    "index": {
      "number_of_shards": 1,
      "number_of_replicas": 1
    }
  },
  "mappings": {
    "doc": {
      "properties": {
        "location": {
          "type": "geo_point"
        }
      }
    }
  }
}'


  curl -X PUT "localhost:9200/india_states_data/doc/1002?routing=1&refresh" -H 'Content-Type: application/json' -d'{
    "name": "Mumbai",
    "state": "Maharashtra",
    "location": {
      "lat": "18.975",
      "lon": "72.825833"
    }
  }'

  curl -X PUT "localhost:9200/india_states_data/doc/1003?routing=1&refresh" -H 'Content-Type: application/json' -d'{
    "name": "Delhi",
    "state": "Delhi",
    "location": {
      "lat": "28.666667",
      "lon": "77.216667"
    }
  }'
  curl -X PUT "localhost:9200/india_states_data/doc/1004?routing=1&refresh" -H 'Content-Type: application/json' -d'{
    "name": "Bangalore",
    "state": "Karnataka",
    "location": {
      "lat": "12.983333",
      "lon": "77.583333"
    }
  }'
  curl -X PUT "localhost:9200/india_states_data/doc/1005?routing=1&refresh" -H 'Content-Type: application/json' -d'{
    "name": "Hyderabad",
    "state": "Telangana",
    "location": {
      "lat": "17.375278",
      "lon": "78.474444"
    }
  }'
  curl -X PUT "localhost:9200/india_states_data/doc/1006?routing=1&refresh" -H 'Content-Type: application/json' -d'{
    "name": "Ahmedabad",
    "state": "Gujarat",
    "location": {
      "lat": "23.033333",
      "lon": "72.616667"
    }
  }'
  curl -X PUT "localhost:9200/india_states_data/doc/1007?routing=1&refresh" -H 'Content-Type: application/json' -d'{
    "name": "Chennai",
    "state": "Tamil Nadu",
    "location": {
      "lat": "13.083333",
      "lon": "80.283333"
    }
  }'
  curl -X PUT "localhost:9200/india_states_data/doc/1008?routing=1&refresh" -H 'Content-Type: application/json' -d'{
    "name": "Kolkata",
    "state": "West Bengal",
    "location": {
      "lat": "22.569722",
      "lon": "88.369722"
    }
  }'
  curl -X PUT "localhost:9200/india_states_data/doc/1009?routing=1&refresh" -H 'Content-Type: application/json' -d'{
    "name": "Surat",
    "state": "Gujarat",
    "location": {
      "lat": "20.966667",
      "lon": "72.9"
    }
  }'
  curl -X PUT "localhost:9200/india_states_data/doc/1010?routing=1&refresh" -H 'Content-Type: application/json' -d'{
    "name": "Pune",
    "state": "Maharashtra",
    "location": {
      "lat": "18.533333",
      "lon": "73.866667"
    }
  }'
  curl -X PUT "localhost:9200/india_states_data/doc/1011?routing=1&refresh" -H 'Content-Type: application/json' -d'{
    "name": "Jaipur",
    "state": "Rajasthan",
    "location": {
      "lat": "24.583333",
      "lon": "86.85"
    }
  }'
  curl -X PUT "localhost:9200/india_states_data/doc/1012?routing=1&refresh" -H 'Content-Type: application/json' -d'{
    "name": "Lucknow",
    "state": "Uttar Pradesh",
    "location": {
      "lat": "26.85",
      "lon": "80.916667"
    }
  }'
  curl -X PUT "localhost:9200/india_states_data/doc/1013?routing=1&refresh" -H 'Content-Type: application/json' -d'{
    "name": "Kanpur",
    "state": "Uttar Pradesh",
    "location": {
      "lat": "26.466667",
      "lon": "80.35"
    }
  }'
  curl -X PUT "localhost:9200/india_states_data/doc/1014?routing=1&refresh" -H 'Content-Type: application/json' -d'{
    "name": "Nagpur",
    "state": "Maharashtra",
    "location": {
      "lat": "23.3",
      "lon": "82.3"
    }
  }'
  curl -X PUT "localhost:9200/india_states_data/doc/1015?routing=1&refresh" -H 'Content-Type: application/json' -d'{
    "name": "Indore",
    "state": "Madhya Pradesh",
    "location": {
      "lat": "22.716667",
      "lon": "75.833333"
    }
  }'
  curl -X PUT "localhost:9200/india_states_data/doc/1016?routing=1&refresh" -H 'Content-Type: application/json' -d'{
    "name": "Thane",
    "state": "Maharashtra",
    "location": {
      "lat": "19.2",
      "lon": "72.966667"
    }
  }'
  curl -X PUT "localhost:9200/india_states_data/doc/1017?routing=1&refresh" -H 'Content-Type: application/json' -d'{
    "name": "Bhopal",
    "state": "Madhya Pradesh",
    "location": {
      "lat": "23.266667",
      "lon": "77.4"
    }
  }'
  curl -X PUT "localhost:9200/india_states_data/doc/1018?routing=1&refresh" -H 'Content-Type: application/json' -d'{
    "name": "Visakhapatnam",
    "state": "Andhra Pradesh",
    "location": {
      "lat": "17.7",
      "lon": "83.3"
    }
  }'
  curl -X PUT "localhost:9200/india_states_data/doc/1019?routing=1&refresh" -H 'Content-Type: application/json' -d'{
    "name": "Pimpri-Chinchwad",
    "state": "Maharashtra",
    "location": {
      "lat": "18.6279288",
      "lon": "73.8009829"
    }
  }'
  curl -X PUT "localhost:9200/india_states_data/doc/1020?routing=1&refresh" -H 'Content-Type: application/json' -d'{
    "name": "Patna",
    "state": "Bihar",
    "location": {
      "lat": "23.3",
      "lon": "82.666667"
    }
  }'
  curl -X PUT "localhost:9200/india_states_data/doc/1021?routing=1&refresh" -H 'Content-Type: application/json' -d'{
    "name": "Vadodara",
    "state": "Gujarat",
    "location": {
      "lat": "22.3",
      "lon": "73.2"
    }
  }'
  curl -X PUT "localhost:9200/india_states_data/doc/1022?routing=1&refresh" -H 'Content-Type: application/json' -d'{
    "name": "Ghaziabad",
    "state": "Uttar Pradesh",
    "location": {
      "lat": "28.666667",
      "lon": "77.433333"
    }
  }'
  curl -X PUT "localhost:9200/india_states_data/doc/1023?routing=1&refresh" -H 'Content-Type: application/json' -d'{
    "name": "Ludhiana",
    "state": "Punjab",
    "location": {
      "lat": "30.9",
      "lon": "75.85"
    }
  }'
 curl -X PUT "localhost:9200/india_states_data/doc/1024?routing=1&refresh" -H 'Content-Type: application/json' -d'{
    "name": "Agra",
    "state": "Uttar Pradesh",
    "location": {
      "lat": "27.183333",
      "lon": "78.016667"
    }
  }'
  curl -X PUT "localhost:9200/india_states_data/doc/1025?routing=1&refresh" -H 'Content-Type: application/json' -d'{
    "name": "Nashik",
    "state": "Maharashtra",
    "location": {
      "lat": "20.0110224",
      "lon": "73.7903373"
    }
  }'
  curl -X PUT "localhost:9200/india_states_data/doc/1026?routing=1&refresh" -H 'Content-Type: application/json' -d'{
    "name": "Faridabad",
    "state": "Haryana",
    "location": {
      "lat": "28.433333",
      "lon": "77.316667"
    }
  }'
  curl -X PUT "localhost:9200/india_states_data/doc/1027?routing=1&refresh" -H 'Content-Type: application/json' -d'{
    "name": "Meerut",
    "state": "Uttar Pradesh",
    "location": {
      "lat": "28.983333",
      "lon": "77.7"
    }
  }'
  curl -X PUT "localhost:9200/india_states_data/doc/1028?routing=1&refresh" -H 'Content-Type: application/json' -d'{
    "name": "Rajkot",
    "state": "Gujarat",
    "location": {
      "lat": "25.731111",
      "lon": "75.5925"
    }
  }'
  curl -X PUT "localhost:9200/india_states_data/doc/1029?routing=1&refresh" -H 'Content-Type: application/json' -d'{
    "name": "Kalyan-Dombivali",
    "state": "Maharashtra",
    "location": {
      "lat": "19.235433",
      "lon": "73.129889"
    }
  }'
  curl -X PUT "localhost:9200/india_states_data/doc/1030?routing=1&refresh" -H 'Content-Type: application/json' -d'{
    "name": "Vasai-Virar",
    "state": "Maharashtra",
    "location": {
      "lat": "19.4258788",
      "lon": "72.8224901"
    }
  }'