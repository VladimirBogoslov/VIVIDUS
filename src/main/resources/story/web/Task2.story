Scenario: Login account 

Given I am on the main application page
When I click on element located `By.xpath(//*[@href='/login'])`
When I set page load timeout to `PT5S`
When I wait until the page has the title 'Log in to Trello'
When I enter `<UserEmail>` in field located `By.xpath(//input [@placeholder="Enter email"])`
And I enter `<Password>` in field located `By.xpath(//input [@placeholder="Enter password"])`
When I click on element located `By.xpath(//input[@value='Log in'])`
When I set page load timeout to `PT5S`
Then the page with the URL 'https://trello.com/uladzimirbahaslou/boards' is loaded
Then field located `By.xpath(//span[contains(text(),'Uladzimir_Bahaslou')])` exists
Examples:
|UserEmail    |Password    |
|${UserEmail2}|${UserPass2}|
|${UserEmail3}|${UserPass3}|
