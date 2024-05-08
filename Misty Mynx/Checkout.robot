*** Settings ***
Library    SeleniumLibrary
Resource   keywords.robot
Resource    variables_locator.robot
Resource    variables_text.robot

*** Test Cases ***
Checkout_TC_1: To Verfiy guest customer is able to see checkout page
    #Open Browser
    Open Website
    #Accept the Cookies
    Accept Cookies
    #Click on Search icon
    Click Element    ${HOMEPAGE_SEARCH_PRODUCT_ICON}
    #Serch Product
    Input Text    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ${PRODUCT_1}
    #Click on Enter
    Press Keys    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ${KEYBOARD_BUTTON_ENTER}
    Sleep    2s
    #Click on product list
    Click Element    ${PLP_PRODUCT_1}
    #Click on ADD TO BAG button
    Sleep    2s
    Wait Until Element Contains    ${PDP_BREADCRUMBS_ITEMLIST}    ${PRODUCT_1}
    Sleep    4s
    Click Element    ${PDP_ADD_TO_CART_BUTTON}
    #Check success message
    Wait Until Element Contains   xpath=//div[@class="modal-inner-wrap"]//h1[contains(text(),'success')]    SUCCESS
    #Click on OK button
    Click Element    xpath=//footer[@class="modal-footer"]//button[@class="action-primary action-accept"]
    #Get minicart count
    ${MINICART_COUNT}=    Get Text    xpath=//span[@class="counter-label"]
    Log To Console    Get count on minicart icon = ${MINICART_COUNT}
    #Click minicart icon
    Sleep    1s
    Click Element    xpath=//div[@data-block="minicart"]
    #Verify the Checkout button on Mini cart
    Wait Until Element Contains    ${MINI_CART_CHECKOUT_BUTTON}    ${MINI_CART_CHECKOUT_BUTTON_TEXT}
    #Click on Checkout button on Mini Cart
    Click Element    ${MINI_CART_CHECKOUT_BUTTON}
    #--------------------------------------------- Shipping Page ---------------------------------------------------
    #Verify shipping page
    Wait Until Page Contains    Shipping Information
    #Verify the Order Information title on Checkout page
    Wait Until Element Contains    ${SHIPPING_ORDER_INFORMATION_SECTION}    ${SHIPPING_ORDER_INFORMATION_SECTION_TEXT}
    #Verify the number of item Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_COUNT_ITEM}=    Get Text    xpath=//tr[@class="totals sub"]//th[@class="mark"]
    Log To Console    ${SHIPPING_ORDER_INFORMATION_SECTION_COUNT_ITEM}
    #Verify the Subtotal on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL}=    Get Text    xpath=//td[@class="amount"]//span[@data-th="Subtotal"]
    Log To Console    Subtotal is ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL}
    #Verify the Shipping Fee on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE}    Get Text    xpath=//td[@class="amount"]//span[@data-th="Shipping Fee"]
    Log To Console    Shipping Fee is ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE} 
    #Verify the Total Price on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL}    Get Text    xpath=//tr[@class="grand totals"]//td//strong//span[@class="price"]
    Log To Console    Total is ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL}
    #Verify the item list title on Checkout page
    Wait Until Element Contains    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_SECCTION}    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_SECCTION_TEXT}
    Click Element    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_SECCTION}
    #Verify item name
    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_NAME}    Get Text    xpath=//ol[@class="minicart-items"]//li[@class="product-item"]//div[@class="product"]//strong[@class="product-item-name"]
    Log To Console    Item name is ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_NAME}    Get Text    
    #Verify item original price
    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_ORIGINAL_PRICE}    Get Text    xpath=//div[@class="subtotal"]//span[@class="cart-price"]//span[@class="original-price"]
    Log To Console    Original price is ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_ORIGINAL_PRICE} 
    #Verify item new price
    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_NEW_PRICE}    Get Text    xpath=//div[@class="subtotal"]//span[@class="cart-price"]//span[@class="price have-original-price"]
    Log To Console    New price is ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_NEW_PRICE}        
    #Verify item color
    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_COLOR}    Get Text    xpath=//div[@class="product options variant"]//ul[@class="item-options"]//li[1]//span[@class="values"]
    Log To Console    Item color is ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_COLOR}    
    #Verify item size
    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_SIZE}    Get Text    xpath=//div[@class="product options variant"]//ul[@class="item-options"]//li[2]//span[@class="values"]
    Log To Console    Item size is ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_SIZE}  
    #Verify item qty
    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_QTY}    Get Text    xpath=//div[@class="details-qty summary-details-qty"]//span[@class="value"]
    Log To Console    item qty is ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_QTY} 
    #Verify the Email address field on Checkout page
    Wait Until Element Contains    xpath=//div[@class="field required"]//label[@for="customer-email"]//span    Email Address
    #FirstName
    Input Text    xpath=//li[@id="shipping"]//input[@name="firstname"]   Kittiya
    #LastName
    Input Text    xpath=//li[@id="shipping"]//input[@name="lastname"]    Thipathikeat
    #Email
    Input Text    xpath=//input[@id="customer-email"]    kittiya_test@gmail.com
    #Country
    Click Element    xpath=//div[@class="control custom-select"]//ancestor::li[@id="shipping"]//option[@data-title="Thailand"]
    #PDSD
    Click Element    xpath=//div[@class="pdsd-wrapper"]//ancestor::li//div[@class="pdsd-label"]
    Click Element    xpath=//div[@class="pdsd-province"]//ancestor::li//p[3]
    Click Element    xpath=//div[@data-bind="foreach: districtOptions"]//ancestor::li//p[22]
    Click Element    xpath=//div[@class="pdsd-control"]//ancestor::li//div[@class="pdsd-subdistrict"]//p[1]
    #HouseNumber
    Input Text    xpath=//li//input[@name="custom_attributes[house_number]"]    21
    #Building
    Input Text    xpath=//li//input[@name="custom_attributes[building]"]    NueyBuilding
    #Floor
    Input Text    xpath=//li//input[@name="custom_attributes[floor]"]    3
    #Alley/Road 
    Input Text    xpath=//li//input[@name="street[0]"]    Ramkhamheang
    #Phone Number
    Input Text    xpath=//li//input[@name="telephone"]    0999999999
    Sleep    2s
    #PDPA_checkbox
    Click Element    xpath=//div[@class="choice field pdpa"]
    #Subscription
    Click Element    xpath=//div[@class="field choice subscription"]
    #Click Proceed to payment
    Click Element    xpath=//button[@data-bind="click: processToPayment"]
    #-------------------------- Payment Page -----------------------------------------------
    Sleep    3s
    Wait Until Page Contains    Select Payment Method
    #Select payment method
    Sleep    2s
    Click Element    xpath=//div[@id="checkout-payment-method-load"]//div[@class="items payment-methods"]//div[@class="payment-group"]//div[@class="payment-method-title field choice"]//label[@for="cashondelivery"]
    Sleep    2s
    #Click Proceed to Review Order button
    Click Element    xpath=//button[@class="button action primary"]
    #-------------------------- Review Order Page ---------------------------------------------
    Wait Until Page Contains    Review Order
    Wait Until Element Contains    xpath=//div[@class="shipping-information"]    Shipping
    Wait Until Element Contains    xpath=//div[@class="payment-information content-section"]    Payment
    Wait Until Element Contains    xpath=//div[@class="block items-in-cart"]//span    Item List
    #Click Place Order button
    Click Element    xpath=//button[@data-bind="click: placeOrder"]
    #-------------------------- Thank you Page -------------------------------------------------
    Sleep    2s
    Wait Until Element Contains    xpath=//div[@class="container order-details"]//div[@class="order-details-in order-summary"]    Order Information
    Wait Until Element Contains    xpath=//div[@class="container order-details"]//div[@class="order-details-in shipping-details"]    Shipping Information
    Wait Until Element Contains    xpath=//div[@class="order-details-in shipping-details"]//following::div[@class="item-details"]    Item List
    ${GUEST_ORDER_NUMBER}=    Get Text    xpath=//ul//li//div[@class="value"]
    Log To Console    Order Number is ${GUEST_ORDER_NUMBER}   
    Sleep    3s

Checkout_TC_2: To verfiy registerd customer is able to see checkout page
    Open Website
    Accept Cookies
    Login    bn.nuey.kittiya@gmail.com    Bn12345678/
    #Click on Search icon
    Click Element    ${HOMEPAGE_SEARCH_PRODUCT_ICON}
    #Serch Product
    Input Text    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ${PRODUCT_1}
    #Click on Enter
    Press Keys    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ${KEYBOARD_BUTTON_ENTER}
    Sleep    2s
    #Click on product list
    Click Element    ${PLP_PRODUCT_1}
    #Click on ADD TO BAG button
    Sleep    2s
    Wait Until Element Contains    ${PDP_BREADCRUMBS_ITEMLIST}    ${PRODUCT_1}
    Sleep    4s
    Click Element    ${PDP_ADD_TO_CART_BUTTON}
    #Check success message
    Wait Until Element Contains   xpath=//div[@class="modal-inner-wrap"]//h1[contains(text(),'success')]    SUCCESS
    #Click on OK button
    Click Element    xpath=//footer[@class="modal-footer"]//button[@class="action-primary action-accept"]
    #Get minicart count
    ${MINICART_COUNT}=    Get Text    xpath=//span[@class="counter-label"]
    Log To Console    Get count on minicart icon = ${MINICART_COUNT}
    #Click minicart icon
    Sleep    1s
    Click Element    xpath=//div[@data-block="minicart"]
    #Verify the Checkout button on Mini cart
    Wait Until Element Contains    ${MINI_CART_CHECKOUT_BUTTON}    ${MINI_CART_CHECKOUT_BUTTON_TEXT}
    #Click on Checkout button on Mini Cart
    Click Element    ${MINI_CART_CHECKOUT_BUTTON}
    Sleep    8s
    ${LANDING_PAGE}=    Run Keyword And Return Status    Page Should Contain    Review Order
    IF    '${LANDING_PAGE}'=='Review Order' 
        Click Element    ${REVIEW_ORDER_SHIPPING_EDIT_BUTTON}
    ELSE
    Wait Until Page Contains    Shipping Information
        
    END
    #--------------------------------------------- Shipping Page ---------------------------------------------------
    #Verify the Order Information title on Checkout page
    Wait Until Element Contains    ${SHIPPING_ORDER_INFORMATION_SECTION}    ${SHIPPING_ORDER_INFORMATION_SECTION_TEXT}
    #Verify the number of item Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_COUNT_ITEM}=    Get Text    xpath=//tr[@class="totals sub"]//th[@class="mark"]
    Log To Console    ${SHIPPING_ORDER_INFORMATION_SECTION_COUNT_ITEM}
    #Verify the Subtotal on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL}=    Get Text    xpath=//td[@class="amount"]//span[@data-th="Subtotal"]
    Log To Console    Subtotal is ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL}
    #Verify the Shipping Fee on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE}    Get Text    xpath=//td[@class="amount"]//span[@data-th="Shipping Fee"]
    Log To Console    Shipping Fee is ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE} 
    #Verify the Total Price on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL}    Get Text    xpath=//tr[@class="grand totals"]//td//strong//span[@class="price"]
    Log To Console    Total is ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL}
    Sleep    2s
    #Click Proceed to payment
    Click Element    xpath=//button[@data-bind="click: processToPayment"]
    Sleep    3s
    #-------------------------- Payment Page ---------------------------------------------
    Wait Until Page Contains    Select Payment Method
    #Select payment method
    Sleep    2s
    Click Element    xpath=//div[@id="checkout-payment-method-load"]//div[@class="items payment-methods"]//div[@class="payment-group"]//div[@class="payment-method-title field choice"]//label[@for="cashondelivery"]
    Sleep    2s
    #Click Proceed to Review Order button
    Click Element    xpath=//button[@class="button action primary"]
    #-------------------------- Review Order Page ---------------------------------------------
    Wait Until Page Contains    Review Order
    Wait Until Element Contains    xpath=//div[@class="shipping-information"]    Shipping
    Wait Until Element Contains    xpath=//div[@class="payment-information content-section"]    Payment
    Wait Until Element Contains    xpath=//div[@class="block items-in-cart"]//span    Item List
    #Click Place Order button
    Click Element    xpath=//button[@data-bind="click: placeOrder"]
    #-------------------------- Thank you Page -------------------------------------------------
    Wait Until Element Contains    xpath=//div[@class="container order-details"]//div[@class="order-details-in order-summary"]    Order Information
    Wait Until Element Contains    xpath=//div[@class="container order-details"]//div[@class="order-details-in shipping-details"]    Shipping Information
    Wait Until Element Contains    xpath=//div[@class="order-details-in shipping-details"]//following::div[@class="item-details"]    Item List
    ${REGISTER_ORDER_NUMBER}=    Get Text    xpath=//ul//li//div[@class="value"]
    Log To Console    Order Number is ${REGISTER_ORDER_NUMBER}   
    Sleep    5s
    Logout
    Delete All Cookies
    Close Browser

Checkout_TC_3: To Verify registered customer able to add multiple shipping address in Shipping Details Tab during the checkout process.
    Open Website
    Accept Cookies
    Login    bn.nuey.kittiya@gmail.com    Bn12345678/
    #Click on Search icon
    Click Element    ${HOMEPAGE_SEARCH_PRODUCT_ICON}
    #Serch Product
    Input Text    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ${PRODUCT_1}
    #Click on Enter
    Press Keys    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ${KEYBOARD_BUTTON_ENTER}
    Sleep    2s
    #Click on product list
    Click Element    ${PLP_PRODUCT_1}
    #Click on ADD TO BAG button
    Sleep    2s
    Wait Until Element Contains    ${PDP_BREADCRUMBS_ITEMLIST}    ${PRODUCT_1}
    Sleep    4s
    Click Element    ${PDP_ADD_TO_CART_BUTTON}
    #Check success message
    Wait Until Element Contains   xpath=//div[@class="modal-inner-wrap"]//h1[contains(text(),'success')]    SUCCESS
    #Click on OK button
    Click Element    xpath=//footer[@class="modal-footer"]//button[@class="action-primary action-accept"]
    #Get minicart count
    ${MINICART_COUNT}=    Get Text    xpath=//span[@class="counter-label"]
    Log To Console    Get count on minicart icon = ${MINICART_COUNT}
    #Click minicart icon
    Sleep    1s
    Click Element    xpath=//div[@data-block="minicart"]
    #Verify the Checkout button on Mini cart
    Wait Until Element Contains    ${MINI_CART_CHECKOUT_BUTTON}    ${MINI_CART_CHECKOUT_BUTTON_TEXT}
    #Click on Checkout button on Mini Cart
    Click Element    ${MINI_CART_CHECKOUT_BUTTON}
    Sleep    8s
    ${LANDING_PAGE}=    Run Keyword And Return Status    Page Should Contain    Review Order
    IF    '${LANDING_PAGE}'=='Review Order' 
        Click Element    ${REVIEW_ORDER_SHIPPING_EDIT_BUTTON}
    ELSE
    Wait Until Page Contains    Shipping Information
        
    END
    #--------------------------------------------- Shipping Page ---------------------------------------------------
    #Get Default shipping address
    ${REGISTER_SHIPPING_DEFAULT}=    Get Text    xpath=//div[@class='shipping-address-item']
    Log To Console    Shipping information/Name-Lastname: ${REGISTER_SHIPPING_DEFAULT}
    #Click on Add New Address
    Click Element    ${SHIPPING_SHIPPING_SECTION_ADD_NEW_ADDRESS_BUTTON}
    #Verify Add New Address Popup
    Sleep    1s
    Wait Until Page Contains Element    ${SHIPPING_SHIPPING_SECTION_ADD_NEW_ADDRESS_POPUP}
    #Input Firstname
    Input Text    ${SHIPPING_SHIPPING_SECTION_ADD_NEW_ADDRESS_FIRST_NAME_FIELD}    ${ADD_NEW_ADDRESS_FIRST_NAME_TEXT}
    #Input Lastname
    Input Text    ${SHIPPING_SHIPPING_SECTION_ADD_NEW_ADDRESS_LAST_NAME_FIELD}    ${ADD_NEW_ADDRESS_LAST_NAME_TEXT}
    #Input Country Thailand
    Click Element    xpath=//div[@id="opc-new-shipping-address"]//div[@id="shipping-new-address-form"]//div[@name="shippingAddress.country_id"]//select[@name="country_id"]
    #Select Provice
    Click Element    xpath=//div[@name="shippingAddress.pdsd"]
    Click Element    xpath=//div[@name="shippingAddress.pdsd"]//div[@class="control"]//div[@class="pdsd-province"]//p[text()='Bangkok']
    #Select District
    Click Element    xpath=//div[@name="shippingAddress.pdsd"]//div[@class="pdsd-district"]//p[text()='Bang Kapi']
    #Select Subdistrict
    Click Element    xpath=//div[@name="shippingAddress.pdsd"]//div[@class="pdsd-subdistrict"]//p[text()='Hua Mak']
    #Input House number
    Input Text    xpath=//div[@name="shippingAddress.custom_attributes.house_number"]//input[@name="custom_attributes[house_number]"]    21H
    #Input Buiding
    Input Text    xpath=//div[@name="shippingAddress.custom_attributes.building"]//input[@name="custom_attributes[building]"]    JASPAL Tower
    #Input Floor
    Input Text    xpath=//div[@name="shippingAddress.custom_attributes.floor"]//input[@name="custom_attributes[floor]"]    38
    #Input Alley/Road
    Input Text    xpath=//div[@name="shippingAddress.street.0"]//input[@name="street[0]"]    Kao-san
    #Input Phone Number
    Input Text    xpath=//div[@name="shippingAddress.telephone"]//input[@name="telephone"]    0989898989
    #Click Save address
    Sleep    2s
    Click Element    xpath=//button[@class="action primary action-update-address"]//span[text()='Save Address']
    Click Element    xpath=//button[@class="action primary action-update-address"]//span[text()='Save Address']
    Wait Until Element Is Not Visible    ${SHIPPING_SHIPPING_SECTION_ADD_NEW_ADDRESS_POPUP}
    #Get New Default shipping address
    ${NEW_REGISTER_SHIPPING_DEFAULT}=    Get Text    xpath=//div[@class='shipping-address-item']
    Log To Console    New Shipping information/Name-Lastname: ${NEW_REGISTER_SHIPPING_DEFAULT}
    #Click Proceed to payment
    Sleep    1s
    Click Element    xpath=//div[@class="actions-toolbar-trigger process-to-payment"]//button[@data-bind="click: processToPayment"]
    Sleep    1s
    #-------------------------- Payment Page ---------------------------------------------
    Wait Until Page Contains    Select Payment Method
    #Select payment method
    Sleep    2s
    Click Element    xpath=//div[@id="checkout-payment-method-load"]//div[@class="items payment-methods"]//div[@class="payment-group"]//div[@class="payment-method-title field choice"]//label[@for="cashondelivery"]
    Sleep    2s
    #Click Proceed to Review Order button
    Click Element    xpath=//button[@class="button action primary"]
    #-------------------------- Review Order Page ---------------------------------------------
    Wait Until Page Contains    Review Order
    Wait Until Element Contains    xpath=//div[@class="shipping-information"]    Shipping
    Wait Until Element Contains    xpath=//div[@class="payment-information content-section"]    Payment
    Wait Until Element Contains    xpath=//div[@class="block items-in-cart"]//span    Item List
    #Click Place Order button
    Click Element    xpath=//button[@data-bind="click: placeOrder"]
    Sleep    5s
    #-------------------------- Thank you Page -------------------------------------------------
    Wait Until Element Contains    xpath=//div[@class="container order-details"]//div[@class="order-details-in order-summary"]    Order Information
    Wait Until Element Contains    xpath=//div[@class="container order-details"]//div[@class="order-details-in shipping-details"]    Shipping Information
    Wait Until Element Contains    xpath=//div[@class="order-details-in shipping-details"]//following::div[@class="item-details"]    Item List
    ${REGISTER_ORDER_NUMBER}=    Get Text    xpath=//ul//li//div[@class="value"]
    Log To Console    Order Number is ${REGISTER_ORDER_NUMBER}   
    Sleep    3s
    Logout
    Delete All Cookies
    Close Browser

Checkout_TC_4: To Verify registered customer able to add multiple shipping address in Shipping Details Tab during the checkout process
    [Documentation]    Select address by select from address book
    Open Website
    Accept Cookies
    Login    bn.nuey.kittiya@gmail.com    Bn12345678/
    #Click on Search icon
    Click Element    ${HOMEPAGE_SEARCH_PRODUCT_ICON}
    #Serch Product
    Input Text    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ${PRODUCT_1}
    #Click on Enter
    Press Keys    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ${KEYBOARD_BUTTON_ENTER}
    Sleep    2s
    #Click on product list
    Click Element    ${PLP_PRODUCT_1}
    #Click on ADD TO BAG button
    Sleep    2s
    Wait Until Element Contains    ${PDP_BREADCRUMBS_ITEMLIST}    ${PRODUCT_1}
    Sleep    4s
    Click Element    ${PDP_ADD_TO_CART_BUTTON}
    #Check success message
    Wait Until Element Contains   xpath=//div[@class="modal-inner-wrap"]//h1[contains(text(),'success')]    SUCCESS
    #Click on OK button
    Click Element    xpath=//footer[@class="modal-footer"]//button[@class="action-primary action-accept"]
    #Get minicart count
    ${MINICART_COUNT}=    Get Text    xpath=//span[@class="counter-label"]
    Log To Console    Get count on minicart icon = ${MINICART_COUNT}
    #Click minicart icon
    Sleep    1s
    Click Element    xpath=//div[@data-block="minicart"]
    #Verify the Checkout button on Mini cart
    Wait Until Element Contains    ${MINI_CART_CHECKOUT_BUTTON}    ${MINI_CART_CHECKOUT_BUTTON_TEXT}
    #Click on Checkout button on Mini Cart
    Click Element    ${MINI_CART_CHECKOUT_BUTTON}
    Sleep    8s
    ${LANDING_PAGE}=    Run Keyword And Return Status    Page Should Contain    Review Order
    IF    '${LANDING_PAGE}'=='Review Order' 
        Click Element    ${REVIEW_ORDER_SHIPPING_EDIT_BUTTON}
    ELSE
    Wait Until Page Contains    Shipping Information
        
    END
    #--------------------------------------------- Shipping Page ---------------------------------------------------
    #Get Default shipping address
    ${REGISTER_SHIPPING_DEFAULT}=    Get Text    xpath=//div[@class='shipping-address-item']
    Log To Console    Shipping information/Name-Lastname: ${REGISTER_SHIPPING_DEFAULT}
    #Click on Select from Address Book button
    Click Element    ${SHIPPING_SHIPPING_SECTION_SELECT_FROM_ADDRESS_BOOK_BUTTON}
    #Verify Please Select Address Popup
    Sleep    2s
    Wait Until Page Contains Element    ${SHIPPING_SHIPPING_SECTION_SELECT_FROM_ADDRESS_BOOK_POPUP} 
    #Select Address from Select from Address Book button (Select First item)
    Click Element    xpath=//div[@class="modal-content"]//div[@class="shipping-addresses-list"]//div[@class="content"]//div[@class="field addresses"]//div[@class="shipping-address-item-wrapper"][1]
    Wait Until Element Is Not Visible    ${SHIPPING_SHIPPING_SECTION_SELECT_FROM_ADDRESS_BOOK_POPUP} 
    #Get New Default shipping address
    ${NEW_REGISTER_SHIPPING_DEFAULT}=    Get Text    xpath=//div[@class='shipping-address-item']
    Log To Console    New Shipping information/Name-Lastname: ${NEW_REGISTER_SHIPPING_DEFAULT}
    #Click Proceed to payment
    Sleep    2s
    Click Element    xpath=//div[@class="actions-toolbar-trigger process-to-payment"]//button[@data-bind="click: processToPayment"]
    Sleep    2s
    #-------------------------- Payment Page ---------------------------------------------
    Wait Until Page Contains    Select Payment Method
    #Select payment method
    Sleep    2s
    Click Element    xpath=//div[@id="checkout-payment-method-load"]//div[@class="items payment-methods"]//div[@class="payment-group"]//div[@class="payment-method-title field choice"]//label[@for="cashondelivery"]
    Sleep    2s
    #Click Proceed to Review Order button
    Click Element    xpath=//button[@class="button action primary"]
    #-------------------------- Review Order Page ---------------------------------------------
    Wait Until Page Contains    Review Order
    Wait Until Element Contains    xpath=//div[@class="shipping-information"]    Shipping
    Wait Until Element Contains    xpath=//div[@class="payment-information content-section"]    Payment
    Wait Until Element Contains    xpath=//div[@class="block items-in-cart"]//span    Item List
    #Click Place Order button
    Click Element    xpath=//button[@data-bind="click: placeOrder"]
    Sleep    5s
    #-------------------------- Thank you Page -------------------------------------------------
    Wait Until Element Contains    xpath=//div[@class="container order-details"]//div[@class="order-details-in order-summary"]    Order Information
    Wait Until Element Contains    xpath=//div[@class="container order-details"]//div[@class="order-details-in shipping-details"]    Shipping Information
    Wait Until Element Contains    xpath=//div[@class="order-details-in shipping-details"]//following::div[@class="item-details"]    Item List
    ${REGISTER_ORDER_NUMBER}=    Get Text    xpath=//ul//li//div[@class="value"]
    Log To Console    Order Number is ${REGISTER_ORDER_NUMBER}   
    Sleep    3s
    Logout
    Delete All Cookies
    Close Browser

Checkout_TC_5: To verify registered customer view the Shipping Details and Payment & review tabs during the checkout process
    Open Website
    Accept Cookies
    Login    bn.nuey.kittiya@gmail.com    Bn12345678/
    #Click on Search icon
    Click Element    ${HOMEPAGE_SEARCH_PRODUCT_ICON}
    #Serch Product
    Input Text    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ${PRODUCT_1}
    #Click on Enter
    Press Keys    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ${KEYBOARD_BUTTON_ENTER}
    Sleep    2s
    #Click on product list
    Click Element    ${PLP_PRODUCT_1}
    #Click on ADD TO BAG button
    Sleep    2s
    Wait Until Element Contains    ${PDP_BREADCRUMBS_ITEMLIST}    ${PRODUCT_1}
    Sleep    4s
    Click Element    ${PDP_ADD_TO_CART_BUTTON}
    #Check success message
    Wait Until Element Contains   xpath=//div[@class="modal-inner-wrap"]//h1[contains(text(),'success')]    SUCCESS
    #Click on OK button
    Click Element    xpath=//footer[@class="modal-footer"]//button[@class="action-primary action-accept"]
    #Get minicart count
    ${MINICART_COUNT}=    Get Text    xpath=//span[@class="counter-label"]
    Log To Console    Get count on minicart icon = ${MINICART_COUNT}
    #Click minicart icon
    Sleep    1s
    Click Element    xpath=//div[@data-block="minicart"]
    #Verify the Checkout button on Mini cart
    Wait Until Element Contains    ${MINI_CART_CHECKOUT_BUTTON}    ${MINI_CART_CHECKOUT_BUTTON_TEXT}
    #Click on Checkout button on Mini Cart
    Click Element    ${MINI_CART_CHECKOUT_BUTTON}
    Sleep    8s
    ${LANDING_PAGE}=    Run Keyword And Return Status    Page Should Contain    Review Order
    IF    '${LANDING_PAGE}'=='Review Order' 
        Click Element    ${REVIEW_ORDER_SHIPPING_EDIT_BUTTON}
    ELSE
    Wait Until Page Contains    Shipping Information
        
    END
    #--------------------------------------------- Shipping Page ---------------------------------------------------
    #Get Default shipping address
    ${REGISTER_SHIPPING_DEFAULT}=    Get Text    xpath=//div[@class='shipping-address-item']
    Log To Console    Shipping information/Name-Lastname: ${REGISTER_SHIPPING_DEFAULT}
    #Verify the Order Information title on Checkout page
    Wait Until Element Contains    ${SHIPPING_ORDER_INFORMATION_SECTION}    ${SHIPPING_ORDER_INFORMATION_SECTION_TEXT}
    #Verify the number of item Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_COUNT_ITEM}=    Get Text    xpath=//tr[@class="totals sub"]//th[@class="mark"]
    Log To Console    ${SHIPPING_ORDER_INFORMATION_SECTION_COUNT_ITEM}
    #Verify the Subtotal on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL}=    Get Text    xpath=//td[@class="amount"]//span[@data-th="Subtotal"]
    Log To Console    Subtotal is ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL}
    #Verify the Shipping Fee on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE}    Get Text    xpath=//td[@class="amount"]//span[@data-th="Shipping Fee"]
    Log To Console    Shipping Fee is ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE} 
    #Verify the Total Price on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL}    Get Text    xpath=//tr[@class="grand totals"]//td//strong//span[@class="price"]
    Log To Console    Total is ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL}
    #Verify the item list title on Checkout page
    Wait Until Element Contains    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_SECCTION}    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_SECCTION_TEXT}
    Click Element    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_SECCTION}
    #Verify item name
    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_NAME}    Get Text    xpath=//ol[@class="minicart-items"]//li[@class="product-item"]//div[@class="product"]//strong[@class="product-item-name"]
    Log To Console    Item name is ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_NAME}    Get Text    
    #Verify item original price
    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_ORIGINAL_PRICE}    Get Text    xpath=//div[@class="subtotal"]//span[@class="cart-price"]//span[@class="original-price"]
    Log To Console    Original price is ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_ORIGINAL_PRICE} 
    #Verify item new price
    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_NEW_PRICE}    Get Text    xpath=//div[@class="subtotal"]//span[@class="cart-price"]//span[@class="price have-original-price"]
    Log To Console    New price is ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_NEW_PRICE}        
    #Verify item color
    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_COLOR}    Get Text    xpath=//div[@class="product options variant"]//ul[@class="item-options"]//li[1]//span[@class="values"]
    Log To Console    Item color is ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_COLOR}    
    #Verify item size
    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_SIZE}    Get Text    xpath=//div[@class="product options variant"]//ul[@class="item-options"]//li[2]//span[@class="values"]
    Log To Console    Item size is ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_SIZE}  
    #Verify item qty
    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_QTY}    Get Text    xpath=//div[@class="details-qty summary-details-qty"]//span[@class="value"]
    Log To Console    item qty is ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_QTY}
    #Verify Proceed to payment button
    Wait Until Page Contains Element   xpath=//div[@class="actions-toolbar-trigger process-to-payment"]//button[@data-bind="click: processToPayment"]
    Sleep    2s
    Delete All Cookies
    Close Browser
   
Checkout_TC_6: To verify customer is able to login at the checkout page
    #Open Browser
    Open Website
    #Accept the Cookies
    Accept Cookies
    #Click on Search icon
    Click Element    ${HOMEPAGE_SEARCH_PRODUCT_ICON}
    #Serch Product
    Input Text    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ${PRODUCT_1}
    #Click on Enter
    Press Keys    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ${KEYBOARD_BUTTON_ENTER}
    Sleep    2s
    #Click on product list
    Click Element    ${PLP_PRODUCT_1}
    #Click on ADD TO BAG button
    Sleep    2s
    Wait Until Element Contains    ${PDP_BREADCRUMBS_ITEMLIST}    ${PRODUCT_1}
    Sleep    4s
    Click Element    ${PDP_ADD_TO_CART_BUTTON}
    #Check success message
    Wait Until Element Contains   xpath=//div[@class="modal-inner-wrap"]//h1[contains(text(),'success')]    SUCCESS
    #Click on OK button
    Click Element    xpath=//footer[@class="modal-footer"]//button[@class="action-primary action-accept"]
    #Get minicart count
    ${MINICART_COUNT}=    Get Text    xpath=//span[@class="counter-label"]
    Log To Console    Get count on minicart icon = ${MINICART_COUNT}
    #Click minicart icon
    Sleep    1s
    Click Element    xpath=//div[@data-block="minicart"]
    #Verify the Checkout button on Mini cart
    Wait Until Element Contains    ${MINI_CART_CHECKOUT_BUTTON}    ${MINI_CART_CHECKOUT_BUTTON_TEXT}
    #Click on Checkout button on Mini Cart
    Click Element    ${MINI_CART_CHECKOUT_BUTTON}
    #--------------------------------------------- Shipping Page ---------------------------------------------------
    #Verify shipping page
    Wait Until Page Contains    Shipping Information
    #Click login link oon shipping page
    Execute Javascript    window.scrollTo(0, 0)
    Click Element    ${SHIPPING_LOGIN_LINK}
    #Verify Login popup
    Wait Until Element Contains    ${LOGIN_POPUP}    ${LOGIN_POPUP_TEXT}
    #Input Email
    Click Element    ${LOGIN_EMAIL_TEXTBOX}
    Input Text    ${LOGIN_EMAIL_TEXTBOX}        ${LOGIN_EMAIL_EXISTING_CUSTOMER}
    #Input Password
    Click Element    ${LOGIN_PASSWORD_TEXTBOX}
    Input Text    ${LOGIN_PASSWORD_TEXTBOX}    ${LOGIN_PASSWORD_EXISTING_CUSTOMER}    
    #Click login button
    Click Element    ${LOGIN_BUTTON}
    Sleep    1s
    Wait Until Element Is Not Visible    ${LOGIN_POPUP}
    Sleep    2s
    Wait Until Page Contains    Shipping Information
    Execute Javascript    window.scrollTo(0, 0)
    Sleep    2s
    Click Element    xpath=//div[@class="container"]//a[@title="Misty Mynx logo"]//img[@title="Misty Mynx logo"]
    Sleep    5s
    Wait until page contains Element    ${LOGIN_ICON}
    Click Element    ${LOGIN_ICON}
    Wait Until Page Contains Element    //div[@class="header-links-menu panel header arrow_box"]//ul//li//span[contains(text(),"Hi,")]
    Click Element    ${LOGIN_ICON}
    Logout
    Delete All Cookies
    Close Browser

Checkout_TC_7: To verify registered customer able to select choose shipping method options in shipping details tab during the checkout process.
    Open Website
    Accept Cookies
    Login    bn.nuey.kittiya@gmail.com    Bn12345678/
    #Click on Search icon
    Click Element    ${HOMEPAGE_SEARCH_PRODUCT_ICON}
    #Serch Product
    Input Text    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ${PRODUCT_1}
    #Click on Enter
    Press Keys    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ${KEYBOARD_BUTTON_ENTER}
    Sleep    2s
    #Click on product list
    Click Element    ${PLP_PRODUCT_1}
    #Click on ADD TO BAG button
    Sleep    2s
    Wait Until Element Contains    ${PDP_BREADCRUMBS_ITEMLIST}    ${PRODUCT_1}
    Sleep    4s
    Click Element    ${PDP_ADD_TO_CART_BUTTON}
    #Check success message
    Wait Until Element Contains   xpath=//div[@class="modal-inner-wrap"]//h1[contains(text(),'success')]    SUCCESS
    #Click on OK button
    Click Element    xpath=//footer[@class="modal-footer"]//button[@class="action-primary action-accept"]
    #Get minicart count
    ${MINICART_COUNT}=    Get Text    xpath=//span[@class="counter-label"]
    Log To Console    Get count on minicart icon = ${MINICART_COUNT}
    #Click minicart icon
    Sleep    1s
    Click Element    xpath=//div[@data-block="minicart"]
    #Verify the Checkout button on Mini cart
    Wait Until Element Contains    ${MINI_CART_CHECKOUT_BUTTON}    ${MINI_CART_CHECKOUT_BUTTON_TEXT}
    #Click on Checkout button on Mini Cart
    Click Element    ${MINI_CART_CHECKOUT_BUTTON}
    Sleep    8s
    ${LANDING_PAGE}=    Run Keyword And Return Status    Page Should Contain    Review Order
    IF    '${LANDING_PAGE}'=='Review Order' 
        Click Element    ${REVIEW_ORDER_SHIPPING_EDIT_BUTTON}
    ELSE
    Wait Until Page Contains    Shipping Information
        
    END
    #--------------------------------------------- Shipping Page ---------------------------------------------------
    #Get Default shipping address
    ${REGISTER_SHIPPING_DEFAULT}=    Get Text    xpath=//div[@class='shipping-address-item']
    Log To Console    Shipping information/Name-Lastname: ${REGISTER_SHIPPING_DEFAULT}
    #Verify the Order Information title on Checkout page
    Wait Until Element Contains    ${SHIPPING_ORDER_INFORMATION_SECTION}    ${SHIPPING_ORDER_INFORMATION_SECTION_TEXT}
    #Verify the number of item Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_COUNT_ITEM}=    Get Text    xpath=//tr[@class="totals sub"]//th[@class="mark"]
    Log To Console    ${SHIPPING_ORDER_INFORMATION_SECTION_COUNT_ITEM}
    #Verify the Subtotal on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL}=    Get Text    xpath=//td[@class="amount"]//span[@data-th="Subtotal"]
    Log To Console    Subtotal is ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL}
    #Verify the Shipping Fee on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE}    Get Text    xpath=//td[@class="amount"]//span[@data-th="Shipping Fee"]
    Log To Console    Shipping Fee is ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE} 
    #Verify the Total Price on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL}    Get Text    xpath=//tr[@class="grand totals"]//td//strong//span[@class="price"]
    Log To Console    Total is ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL}
    #Verify the item list title on Checkout page
    Wait Until Element Contains    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_SECCTION}    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_SECCTION_TEXT}
    #Verify Choose Shipping Method
    Wait Until Page Contains    Choose Shipping Method
    Click Element    xpath=//tr[@id="checkout-shipping-method-section"][2]
    #Verify the Order Information title on Checkout page
    Wait Until Element Contains    ${SHIPPING_ORDER_INFORMATION_SECTION}    ${SHIPPING_ORDER_INFORMATION_SECTION_TEXT}
    #Verify the number of item Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_COUNT_ITEM}=    Get Text    xpath=//tr[@class="totals sub"]//th[@class="mark"]
    Log To Console    ${SHIPPING_ORDER_INFORMATION_SECTION_COUNT_ITEM}
    #Verify the Subtotal on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL}=    Get Text    xpath=//td[@class="amount"]//span[@data-th="Subtotal"]
    Log To Console    Subtotal is ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL}
    #Verify the Shipping Fee on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE_UPDATE}    Get Text    xpath=//td[@class="amount"]//span[@data-th="Shipping Fee"]
    Log To Console    Shipping Fee is update to ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE_UPDATE} 
    #Verify the Total Price on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL}    Get Text    xpath=//tr[@class="grand totals"]//td//strong//span[@class="price"]
    Log To Console    Total is ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL}
    #Click Proceed to payment
    Sleep    1s
    Click Element    xpath=//div[@class="actions-toolbar-trigger process-to-payment"]//button[@data-bind="click: processToPayment"]
    Sleep    1s
    #-------------------------- Payment Page ---------------------------------------------
    Wait Until Page Contains    Select Payment Method
    #Select payment method
    Sleep    2s
    Click Element    xpath=//div[@id="checkout-payment-method-load"]//div[@class="items payment-methods"]//div[@class="payment-group"]//div[@class="payment-method-title field choice"]//label[@for="cashondelivery"]
    Sleep    2s
    #Click Proceed to Review Order button
    Click Element    xpath=//button[@class="button action primary"]
    #-------------------------- Review Order Page ---------------------------------------------
    Wait Until Page Contains    Review Order
    Wait Until Element Contains    xpath=//div[@class="shipping-information"]    Shipping
    Wait Until Element Contains    xpath=//div[@class="payment-information content-section"]    Payment
    Wait Until Element Contains    xpath=//div[@class="block items-in-cart"]//span    Item List
    #Click Place Order button
    Click Element    xpath=//button[@data-bind="click: placeOrder"]
    Sleep    5s
    #-------------------------- Thank you Page -------------------------------------------------
    Wait Until Element Contains    xpath=//div[@class="container order-details"]//div[@class="order-details-in order-summary"]    Order Information
    Wait Until Element Contains    xpath=//div[@class="container order-details"]//div[@class="order-details-in shipping-details"]    Shipping Information
    Wait Until Element Contains    xpath=//div[@class="order-details-in shipping-details"]//following::div[@class="item-details"]    Item List
    ${REGISTER_ORDER_NUMBER}=    Get Text    xpath=//ul//li//div[@class="value"]
    Log To Console    Order Number is ${REGISTER_ORDER_NUMBER}   
    Sleep    3s
    Logout
    Delete All Cookies
    Close Browser










