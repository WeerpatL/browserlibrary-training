*** Variables ***
${login_page_locator.txt_username}  xpath=//form[@id="signin-root"]//input[@type="email"]
${login_page_locator.txt_password}  xpath=//form[@id="signin-root"]//div/input[@type="password"]
${login_page_locator.btn_sign_in}   xpath=//form[@id="signin-root"]//Button[@type="submit" and @id="btn-signin"]
${login_page_locator.lbl_login_completed_message}   xpath=//form[@id="signin-root"]/p[contains(text(),"@#string@#")]
