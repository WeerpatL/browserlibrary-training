*** Settings ***
Resource     ${CURDIR}/../resources/import.robot
Variables    ${CURDIR}/../resources/testdata/testdata.yaml

Test Setup   Default test setup
Test Teardown  Default test teardown
*** Test Cases ***
TC_001 Login
    [Documentation]     สามารถค้นหา mug และเพื่มลงตะกร้าสามชิ้นได้สำเร็จและยืนยันว่าราคาถูกต้อง
    [Tags]  test_id:tc_001
    # เข้าสู่ระบบ
    login_feature.Enter login page and login with credentials   
    ...     username=${TC_001.username}
    ...     password=${TC_001.password}
    # ค้นหา mug → รอให้แสดง autocomplete จากนันคลิก ้ "Ceramic Mug"
    product_feature.Search for product and select suggested item  item=${translation.product.ceramic_mug}
    # เพิม ่ Ceramic Mug 3 ชนิ้ ลงตะกร้า (อย่าลืมเลือกส ก่อนเพิ ี ม่ )
    product_feature.Input product required detail and click add to cart button
    ...     quantity=${TC_001.product_quantity}
    ...     color=${TC_001.product_color}
    # ไปท่ีCheckout → ติ๊กทังหมดหากจ;าเป็น ้ → ยืนยันว่าราคาถูกต้อง (subtotal ± discount + shipping = total)
    cart_feature.Select cart item and verify total price summary  item_list=${TC_001.item}  total_price=${TC_001.total_price}