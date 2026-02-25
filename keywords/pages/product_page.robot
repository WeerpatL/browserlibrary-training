*** Keywords ***
Select color option
    [Arguments]     ${color}
    ${locator}=     String.Replace string   string=${product_page_locator.btn_color_option}     search_for=@#string@#     replace_with=${color}
    Browser.Click   selector=${locator}

Input product quantity
    [Arguments]     ${quantity}
    Browser.Fill text   selector=${product_page_locator.txt_product_quantity}     txt=${quantity}

Click add to cart button
    Browser.Click   selector=${product_page_locator.btn_add_to_cart}

Click view detail on given product
    [Arguments]     ${product_name}
    ${locator}=     String.Replace string   string=${product_page_locator.btn_view_detail}     search_for=@#string@#     replace_with=${product_name}
    Browser.Scroll to element   selector=${locator}
    Browser.Click   selector=${locator}