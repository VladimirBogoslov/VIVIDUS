Scenario: Create account
Given I am on a page with the URL 'https://www.reddit.com/'
When I click on element located `By.xpath(//a[text()='Sign Up'])`
When I switch to frame located `By.xpath(//iframe[contains(@src,'header_signup')])`
When I set page load timeout to `PT15S`
When I enter `${registeredUserEmail}` in field located `By.xpath(//*[@id="regEmail"])`
When I click on element located `By.xpath(//*[text()='Continue'])`
When I add `${registeredUserName}` to field located `By.xpath(//*[@id="regUsername"])`
And I add `$registeredUserPass` to field located `By.xpath(//*[@id="regPassword"])`
