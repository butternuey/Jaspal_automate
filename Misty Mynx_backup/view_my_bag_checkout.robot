*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    Misty Mynx/variables.robot
Resource    Misty Mynx/keywords.robot

*** Test Cases ***
TC_001: Guest checkout via My bag page
    Open Website
    Click Element    ${HOMEPAGE_SEARCH_PRODUCT_ICON}
    Input Text    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ${PRODUCT_1}
    Press Keys    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ENTER
    Sleep    2s
    Click Element    ${PLP_PRODUCT_1}
    #--------------------------------- Add product to cart -------------------------------------------------------
    #select color
    Click Element    xpath=//div[@id="product-options-wrapper"]//div[@aria-label="Red"]
    #select size
    Click Element    xpath=//div[@id="product-options-wrapper"]//div[@aria-label="S"]
    #select qty
    Click Element    xpath=//div[@class="product-options-bottom"]//span[@class="increaseQty"]
    sleep    3s
    Click Element    xpath=//button[@id="product-addtocart-button"]
    Sleep    2s
    Wait Until Element Contains   xpath=//div[@class="modal-inner-wrap"]//h1[contains(text(),'success')]    SUCCESS
    ${LOG_SUCCESS}=    Get Text    //div[contains(@id,"modal-content-")]/div/p/span
    Log    ${LOG_SUCCESS}
    Click Element    xpath=//footer[@class="modal-footer"]//button[@class="action-primary action-accept"]
    #--------------------------------- Go to View My Bag ------------------------------------------------------------
    Click Element    xpath=//div[@data-block="minicart"]
    Click Element    xpath=//button[@class=" btn btn--secondary"]/span[text()='View My Bag']
    Wait Until Page Contains    My Bag
    ${LOG_MYBAG_PRODUCT_NAME}=    Get Text    xpath=//div[@class="product-item-details"]/strong/a
    Log    My bag pag: Product Name is ${LOG_MYBAG_PRODUCT_NAME}
    ${LOG_MYBAG_PRODUCT_PRICE}=    Get Text    xpath=//div[@class="col subtotal"]//span[@class="price"]/span
    Log    My bag pag: Product Price is ${LOG_MYBAG_PRODUCT_PRICE}
    ${LOG_MYBAG_PRODUCT_COLOR}    Get Text    xpath=//table[@id="shopping-cart-table"]/tbody[1]//div[contains(text(), "Color")]/ancestor::li[@class="list-options"]/div[@class="values"]
    Log    My bag pag: Product Color is ${LOG_MYBAG_PRODUCT_COLOR}
    ${LOG_MYBAG_PRODUCT_SIZE}    Get Text    xpath=//table[@id="shopping-cart-table"]//tbody//tr//td//li[@class="list-options"]//div[contains(text(),'Size')]/ancestor::li[@class="list-options"]/div[@class="values"]
    Log    My bag pag: Product Size is ${LOG_MYBAG_PRODUCT_SIZE}
    ${LOG_MYBAG_PRODUCT_QTY}    Get Value    xpath=//table[@id="shopping-cart-table"]//tbody//div[@class="product-item-details"]//ancestor::tr[@class="item-info"]//div[@class="field qty"]//input[contains(@id,"qty")]
    Log    My bag pag: Product Qty is ${LOG_MYBAG_PRODUCT_QTY}
    Click Element    xpath=//ul[@class="checkout methods items checkout-methods-items"]//button[@class="action primary btn btn--primary checkout"]
    #--------------------------------------------- Shipping Page ---------------------------------------------------
    Wait Until Page Contains    Checkout as Guest
    Sleep     1s
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
    #PDPA_checkbox
    Click Element    xpath=//div[@class="choice field pdpa"]
    #Subscription
    Click Element    xpath=//div[@class="field choice subscription"]
    #Click Proceed to payment
    Click Element    xpath=//button[@data-bind="click: processToPayment"]
    #-------------------------- Payment Page -----------------------------------------------
    Wait Until Page Contains    Select Payment Method
    #Select payment method
    Sleep    2s
    Click Element    xpath=//div[@class="payment-method-title field choice"]//label[@for="omise_cc"]
    Input Text    xpath=//input[@id="omise_ccCardHolderName"]    kittiya QA
    Input Text    xpath=//input[@id="omise_ccCardNumber"]    4242424242424242
    Select From List By Value    xpath=//select[@class="select select-month"]    1
    Select From List By Value    xpath=//select[@class="select select-year"]    2026
    Input Text    xpath=//input[@id="omise_ccCardSecurityCode"]    123
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
    ${Order Number}=    Get Value    //li//label[contains(text(),'Order Number')]//following-sibling::div    
    ${Subtotal}=    
    ${Shipping Fee}=    
    ${Total}=    
    Sleep    15s

