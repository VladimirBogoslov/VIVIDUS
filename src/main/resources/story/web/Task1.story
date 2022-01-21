Scenario: Create account
Meta: @skip
Given I am on a page with the URL 'https://www.reddit.com/'
When I click on element located `By.xpath(//a[text()='Sign Up'])`
When I switch to frame located `By.xpath(//iframe[contains(@src,'header_signup')])`
When I set page load timeout to `PT15S`
When I enter `${registeredUserEmail}` in field located `By.xpath(//*[@id="regEmail"])`
When I click on element located `By.xpath(//*[text()='Continue'])`
When I add `${registeredUserName}` to field located `By.xpath(//*[@id="regUsername"])`
And I add `$registeredUserPass` to field located `By.xpath(//*[@id="regPassword"])`
When I click on element located `By.xpath(//button[text()='Sign Up'])`
When I click on element located `By.xpath(//button[text()='Skip'])`
When I click on element located `By.xpath(//button[contains(text(),'Anime')])`
And I click on element located `By.xpath(//button[text()='Manga'])`
And I click on element located `By.xpath(//button[text()='Cosplay'])`
And I click on element located `By.xpath(//button[text()='Anime Art'])`
When I click on element located `By.xpath(//button[text()='Continue'])`
When I click on element located `By.xpath(//div[text()='r/popheads'])`
When I click on element located `By.xpath(//button[text()='Continue'])`
When I click on element located `By.xpath(//button[text()='Skip'])`

Scenario: Perform search by top search bar
Given I am on a page with the URL 'https://www.reddit.com/'
When I change context to element located `By.xpath(//input[contains(@placeholder,'Search Reddit')])`
When I enter `${SearchItem}` in field located `By.xpath(//input[contains(@placeholder,'Search Reddit')])`
When I press ENTER on keyboard
When I set page load timeout to `PT15S`
When I wait until the page title contains the text ''ukulele'
