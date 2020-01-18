read -p "Enter ES host : " host
read -p "Enter ES port : " port
read -p "username for elastic, if any?" username
read -p "password for the user" password
echo "entered host URL is $host:$port"
url=$host:$port

if [ (-z $username ) -a (-z $password ) ]
then
	echo "OK"
else
	echo "Not OK"
fi

echo "$url"
curl -X PUT "$url/test-index-parent-child" -H 'Content-Type: application/json' -d'
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
