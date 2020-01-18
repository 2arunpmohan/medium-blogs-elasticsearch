Source of the above data is Linux Academy

# Requests for data download
## MOCK_DATA.json
`curl -O https://raw.githubusercontent.com/linuxacademy/content-elastic-certified-engineer/master/sample_data/accounts.json`

# Requests for data indexing

## Pricing_ndjson.json
`curl -XPOST 'http://localhost:9200/test/pricings/_bulk?pretty' -H "Content-Type: application/x-ndjson" --data-binary @Pricing_ndjson.json`

