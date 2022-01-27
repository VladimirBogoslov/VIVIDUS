Scenario: Login account (positive)
Meta: @skip
Given I am on the main application page
When I click on element located `By.xpath(//*[@href='/login'])`
When I wait until the page has the title 'Log in to Trello'
When I enter `<UserEmail>` in field located `By.xpath(//input[@placeholder="Enter email"])`
When I wait until element located `By.xpath(//input[@value='Log in with Atlassian'])` appears
When I click on element located `By.xpath(//input[@value='Log in with Atlassian'])`
When I enter `<Password>` in field located `By.xpath(//input [@placeholder="Enter password"])`
When I click on element located `By.xpath(//button[@type='submit'])`
When I wait until element located `By.xpath(//span[contains(text(),'Uladzimir_Bahaslou')])` appears
Then number of elements found by `By.xpath(//span[contains(text(),'Uladzimir_Bahaslou')])` is greater than `0`
Then field located `By.xpath(//span[contains(text(),'Uladzimir_Bahaslou')])` exists
Examples:
|UserEmail    |Password    |
|${UserEmail2}|${UserPass2}|
 
Scenario: Login account (negative)
Meta: @skip
Given I am on the main application page
When I click on element located `By.xpath(//*[@href='/login'])`
When I wait until the page has the title 'Log in to Trello'
When I enter `<UserEmail>` in field located `By.xpath(//input [@placeholder="Enter email"])`
When I enter `<Password>` in field located `By.xpath(//input [@placeholder="Enter password"])`
When I click on element located `By.xpath(//input[@value='Log in'])`
When I wait until element located `By.xpath(//p[contains(text(),'There')])` appears
Then number of elements found by `By.xpath(//p[contains(text(),'There')])` is greater than `0`
Then field located `By.xpath(//p[contains(text(),'There')])` exists
Examples:
|UserEmail                  |Password                               |
|#generate(Name.firsrName)}||#generate(regexify '[abcdfghiah]{10}")}|

GivenStories: story/precondition/Precondition.story 
Scenario: Visual validation of 
Given I am on a page with the URL 'https://trello.com/uladzimirbahaslou/boards'
When I login in system even though the warning message 'Account can be private'
When I find <= '1' elements by By.xpath(//h1[contains(text(),'Remote Team Hub')]) and for each element do
|step                                                                                       |                             
|When I click on an element by the xpath '//h1[contains(text(),'Remote Team Hub')]'         |
|When I wait until the page title contains the text 'Remote Team Hub'                       | 
