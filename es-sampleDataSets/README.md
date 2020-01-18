The source of the above data is Linux Academy

#Requests for data download
##Accounts.json
curl -O https://raw.githubusercontent.com/linuxacademy/content-elastic-certified-engineer/master/sample_data/accounts.json
##Shakespeare.json
curl -O https://raw.githubusercontent.com/linuxacademy/content-elastic-certified-engineer/master/sample_data/shakespeare.json
##Logs.json
curl -O https://raw.githubusercontent.com/linuxacademy/content-elastic-certified-engineer/master/sample_data/logs.json

#Requests for data indexing
##Accounts.json
curl -XPOST 'http://localhost:9200/bank/account/_bulk?pretty' -H "Content-Type: application/x-ndjson" --data-binary @accounts.json
##Shakespeare.json
curl -XPOST 'http://localhost:9200/shakespeare/doc/_bulk?pretty' -H "Content-Type: application/x-ndjson" --data-binary @shakespeare.json
##Logs.json
curl -XPOST 'http://localhost:9200/logs/log/_bulk?pretty' -H "Content-Type: application/x-ndjson" --data-binary @logs.json
