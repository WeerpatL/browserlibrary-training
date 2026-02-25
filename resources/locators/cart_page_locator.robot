*** Variables ***
${cart_page_locator.btn_remove_item}    xpath=//button[contains(text(), "${translation.button_name.remove}") and not(@title="${translation.title.remove_coupon}")]
${cart_page_locator.chk_item}           xpath=//div[contains(text(),"@#string@#")]/ancestor::div/input[@type="checkbox"]
${cart_page_locator.lbl_subtotal}       xpath=//span[contains(text(),"${translation.summary_price.subtotal}")]/following-sibling::span
${cart_page_locator.lbl_shipping}       xpath=//span[contains(text(),"${translation.summary_price.shipping}")]/following-sibling::span