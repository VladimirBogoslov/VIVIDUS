Scenario: Create account
Given I am on a page with the URL 'https://www.reddit.com/'
When I click on element located `By.xpath(//*[@id="SHORTCUT_FOCUSABLE_DIV"]/div[1]/header/div/div[2]/div/div[1]/a[2])`
When I enter `uladzimir_bahaslou@epam.com` in field located `By.xpath(//*[@id="regEmail"])`
When I click on element located `By.xpath(/html/body/div/main/div[1]/div/div[2]/form/fieldset[2]/button)`
When I add `UladzimirBahaslou` to field located `By.xpath(//*[@id="regUsername"])`
And I add `TeSt123!23` to field located `By.xpath(//*[@id="regPassword"])`
When I click on element located `By.xpath(/html/body/div/main/div[2]/div/div/div[3]/button)`
Then an alert is not present