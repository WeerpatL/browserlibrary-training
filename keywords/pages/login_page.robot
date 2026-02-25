*** Keywords ***
Input username
    [Arguments]     ${username}
    Browser.Fill text   selector=${login_page_locator.txt_username}     txt=${username}

Input password
    [Arguments]     ${password}
	Browser.Fill text   selector=${login_page_locator.txt_password}     txt=${password}

Click login button
	Browser.Click	selector=${login_page_locator.btn_sign_in}

Verify login failed message
    [Arguments]    ${message}
    ${locator}=     String.Replace string   string=${login_page_locator.lbl_login_completed_message}    search_for=@#string@#   replace_with=${message}
    Browser.Wait for elements state   selector=${locator}    state=visible

Verify that login success toast message is not display
    ${locator}=     String.Replace string   string=${common_locator.popup_toast}    search_for=@#string@#   replace_with=${translation.login_message.login_success_toast}
    Browser.Wait for elements state   selector=${locator}    state=hidden

