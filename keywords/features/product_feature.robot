*** Keywords ***
Search for product and select suggested item
    [Arguments]     ${item}
    common.Input item in nav search bar  item=${item}
    common.Click suggested item in search bar  item=${item}

Input product required detail and click add to cart button
    [Arguments]     ${quantity}     ${color}
    product_page.Select color option  color=${color}
    product_page.Input product quantity  quantity=${quantity}
    product_page.Click add to cart button

Search for product and view item detail by product
    [Arguments]     ${item}
    common.Input item in nav search bar  item=${item}
    common.Click search button in nav search bar
    product_page.Click view detail on given product  product_name=${item}