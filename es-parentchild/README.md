## Indexing Parent Documents
`curl -XPOST 'https://localhost:9200/test-index-parent-child/_doc/_bulk?pretty' -H "Content-Type: application/x-ndjson" --data-binary @parentDocs.json -u elastic:WEiz8W35jKWo2PWDAapA -k `

# Indexing Child Documents
`curl -XPOST 'https://localhost:9200/test-index-parent-child/_doc/_bulk?pretty' -H "Content-Type: application/x-ndjson" --data-binary @childrenDocs.json -u elastic:WEiz8W35jKWo2PWDAapA -k`


