*** Keywords ***
Input username
    [Arguments]     ${username}
    Browser.Fill text   selector=${login_page_locator.txt_username}   text=${username}

Input passsword
    [Arguments]     ${password}
	Browser.Fill text   selector=${login_page_locator.txt_password}   text=${password}

Click login button
	Browser.Click	selector=${ogin_page_locator.btn_sign_in}