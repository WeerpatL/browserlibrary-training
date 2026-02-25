*** Keywords ***
Enter login page and login with credentials
    [Arguments]     ${username}     ${password}
    common.Click nav bar account button
    common.Select sign in menu
    login_page.Input username       username=${username}
    login_page.Input password       password=${password}
    login_page.Click login button
    login_page.Verify that login success toast message is not display
