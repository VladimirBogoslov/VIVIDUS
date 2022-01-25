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
When I set focus to the context element
When I click on element located `By.xpath(//button[text()='Skip'])`
When I set focus to the context element
When I click on element located `By.xpath(//button[contains(text(),'Anime')])`
And I click on element located `By.xpath(//button[text()='Manga'])`
And I click on element located `By.xpath(//button[text()='Cosplay'])`
And I click on element located `By.xpath(//button[text()='Anime Art'])`
When I set focus to the context element
When I click on element located `By.xpath(//button[text()='Continue'])`
When I set focus to the context element
When I click on element located `By.xpath(//div[text()='r/popheads'])`
When I set focus to the context element
When I click on element located `By.xpath(//button[text()='Continue'])`
When I set focus to the context element
When I click on element located `By.xpath(//button[text()='Skip'])`

Scenario: Perform search by top search bar
Meta: @skip
Given I am on a page with the URL 'https://www.reddit.com/'
When I change context to element located `By.xpath(//input[contains(@placeholder,'Search Reddit')])`
When I enter `ukulele` in field located `By.xpath(//input[contains(@placeholder,'Search Reddit')])`
When I press ENTER on keyboard
When I wait until the page title contains the text 'ukulele'
Then the page title contains the text 'ukulele'

Scenario: Open post page from search result page
Meta: @skip
When I change context to element located `By.xpath(//div[@class='_1BJGsKulUQfhJyO19XsBph _3SktesklDBwXt2pEl0sHY8'])`
When I click on element located `By.xpath(//div[contains(@class,'scrollerItem Post t3_rxpomr')])`
Then the page with the URL 'https://www.reddit.com/rpan/r/RedditSessions/rxpomr' is loaded

Scenario: Go to messages
Meta: @skip
Given I am on a page with the URL 'https://www.reddit.com/'
When I click on element located `By.xpath(//a[text()='Log In'])`
When I switch to frame located `By.xpath(//iframe[contains(@src,'enabled&experiment_d2x_onboarding=enabled')])`
When I enter `${registeredUserName}` in field located `By.xpath(//*[@id="loginUsername"])`
And I enter `${registeredUserPass}` in field located `By.xpath(//*[@id="loginPassword"])`
When I click on element located `By.xpath(//*[@type='submit'])`
Then field located `By.xpath(//span[contains(text(),'VladimirBahaslou')])` exists

Scenario: Go to messages
Given I am on a page with the URL 'https://www.reddit.com/'
When I click on element located `By.xpath(//a[text()='Log In'])`
When I switch to frame located `By.xpath(//iframe[contains(@src,'enabled&experiment_d2x_onboarding=enabled')])`
When I login as a registered user
Then field located `By.xpath(//span[contains(text(),'VladimirBahaslou')])` exists

Scenario: Delete “Welcome to reddit” message
Meta: @skip