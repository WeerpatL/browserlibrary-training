*** Keywords ***
Remove all item from cart
    common.Click cart icon in nav bar
    ${elements}=    Browser.Get elements    selector=${cart_page_locator.btn_remove_item}
    FOR    ${element}    IN    @{elements}
        Browser.Click   selector=${element}
        Browser.Click   selector=${common_locator.btn_confirm}
    END

Select cart item and verify total price summary
    [Arguments]   ${item_list}    ${total_price} 
    common.Click cart icon in nav bar
    cart_page.Select item in cart by check the checkbox  item_list=${item_list}
    ${subtotal}=    Browser.Get text   selector=${cart_page_locator.lbl_subtotal}
    ${subtotal_num}=    BuiltIn.Evaluate    float("${subtotal}".replace("THB", "").strip())
    ${shipping_price}=    Browser.Get text   selector=${cart_page_locator.lbl_shipping}
    ${shipping_price_num}=    BuiltIn.Evaluate    float("${shipping_price}".replace("THB", "").strip())
    ${total_price_cal}=   BuiltIn.Evaluate    ${subtotal_num} + ${shipping_price_num}
    Should Be Equal As Numbers    ${total_price_cal}    ${total_price}
