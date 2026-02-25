*** Keywords ***
Default test setup
    common.Open doppee browser

Default test teardown
    cart_feature.Remove all item from cart
    common.Close doppee browser

Open doppee browser
    Browser.New browser
    ...     browser=${default_browser}
    ...     headless=${headless}
    ...     slowMo=0.5s
    Browser.New page    url=${URL_PATH}

Close doppee browser
    Browser.Close browser

Click nav bar account button
    Browser.Click   selector=${common_locator.btn_nav_bar_account}

Select sign in menu
    Browser.Click   selector=${common_locator.btn_nav_bar_sign_in}

Input item in nav search bar
    [Arguments]    ${item}
    Browser.Fill text   selector=${common_locator.txt_nav_bar_search}     txt=${item}

Click search button in nav search bar
    Browser.Click   selector=${common_locator.btn_nav_bar_search}

Click suggested item in search bar
    [Arguments]     ${item}
    ${locator}=     String.Replace string   string=${common_locator.lbl_suggest_item}   search_for=@#string@#   replace_with=${item}
    Browser.Wait for elements state     selector=${locator}    state=visible
    Browser.Click   selector=${locator}

Click cart icon in nav bar
    Browser.Click   selector=${common_locator.btn_nav_bar_cart}