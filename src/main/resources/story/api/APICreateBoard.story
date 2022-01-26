Scenario: API test

Given request body: {
"name":"Name",
"defaultLabels":"true"
}
When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/?key=6ee1d6374f1ffebc7286a4010a7d9379&token=df3db169009568dcd230433f398c986a2baf52158d7db738de21525c16adcc98&name=Name'
Then the response code is equal to '200'
