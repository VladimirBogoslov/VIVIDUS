Scenario: Login account (positive)
Given I am on the main application page
When I click on element located `By.xpath(//*[@href='/login'])`
When I wait until the page has the title 'Log in to Trello'
When I enter `Uladzimir_Bahaslou@epam.com` in field located `By.xpath(//input[@placeholder="Enter email"])`
When I wait until element located `By.xpath(//input[@value='Log in with Atlassian'])` appears
When I click on element located `By.xpath(//input[@value='Log in with Atlassian'])`
When I enter `1901237Qw!` in field located `By.xpath(//input [@placeholder="Enter password"])`
When I click on element located `By.xpath(//button[@type='submit'])`
When I wait until element located `By.xpath(//span[contains(text(),'Uladzimir_Bahaslou')])` appears
Then number of elements found by `By.xpath(//span[contains(text(),'Uladzimir_Bahaslou')])` is greater than `0`
Then field located `By.xpath(//span[contains(text(),'Uladzimir_Bahaslou')])` exists
