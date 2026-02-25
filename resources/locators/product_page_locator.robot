*** Variables ***
${product_page_locator.txt_product_quantity}    xpath=//input[@id="qty-input"]
${product_page_locator.btn_color_option}    xpath=//label[text()="Color"]/following-sibling::div/button[@class="chip" and contains(text(),"@#string@#")]
${product_page_locator.btn_add_to_cart}     xpath=//button[@id="btn-add-to-cart"]
${product_page_locator.btn_view_detail}     xpath=//a[contains(text(),"@#string@#")]/ancestor::li//button[@class="btn-primary"]