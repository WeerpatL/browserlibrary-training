*** Keywords ***
Select item in cart by check the checkbox
    [Arguments]     ${item_list}
    FOR    ${item}    IN    @{item_list}
        ${locator}=     String.Replace String
        ...    string=${cart_page_locator.chk_item}
        ...    search_for=@#string@#
        ...    replace_with=${item}
        Browser.Click    selector=${locator}
    END
    