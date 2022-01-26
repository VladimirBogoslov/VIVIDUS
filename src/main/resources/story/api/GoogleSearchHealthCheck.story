Scenario: Verify google search is available
Meta: @skip
When I issue a HTTP HEAD request for a resource with the URL 'https://google.com/'
Then `${responseCode}` is equal to `200`

Scenario: API test
When I initialize the story variable `name` with value `#{generate(Name.fullName)}`
Given request body: {
"name":"${name}",
"defaultLabels":"true"
}
When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/?key=<>&token=<>&name=<${name}>'
Then the response code is equal to '200'
