*** Settings ***
Library    SeleniumLibrary
Resource   variables.robot
Resource   keywords.robot
Resource    variables_locator.robot
Resource    variables_text.robot

*** Test Cases ***
Header-Mini Cart_TC_1: Add/Edit/Delete Product_Mini Cart_Guest
    #Open Browser
    Open Website
    #Accept the Cookies
    Accept Cookies
    #----------------------- Add Product in minicart -------------------------------
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
    Wait Until Element Contains    xpath=//div[@class="crumbName container"]    Mynx Love Tee
    Sleep    4s
    Click Element    xpath=//button[@id="product-addtocart-button"]
    #Check success message
    Wait Until Element Contains   xpath=//div[@class="modal-inner-wrap"]//h1[contains(text(),'success')]    SUCCESS
    #Click on OK button
    Click Element    xpath=//footer[@class="modal-footer"]//button[@class="action-primary action-accept"]
    #Get minicart count
    ${MINICART_COUNT}=    Get Text    xpath=//span[@class="counter-label"]
    Log To Console    Get count on minicart icon = ${MINICART_COUNT}
    #----------------------- Edit Product in minicart -------------------------------
    #Click Mini cart icon
    Click Element    ${MINI_CART_ICON}
    Wait Until Page Contains Element    ${MINI_CART_POPUP}
    #Click Increase button
    Click Element    ${MINI_CART_INCREASE}
    Wait Until Page Contains Element    ${MINI_CART_UPDATE_BUTTON}
    #Click update button
    Click Element    ${MINI_CART_UPDATE_BUTTON}
    Sleep    2s
    ${MINICART_COUNT_UPDATE}=    Get Text    xpath=//span[@class="counter-label"]
    Log To Console    Get count on minicart icon update: ${MINICART_COUNT}
    #----------------------- Delete Product in minicart -------------------------------
    #Click on delete icon
    Click Element    ${MINI_CART_DELETE_ICON}
    #Verify delete popup
    Wait Until Page Contains Element    ${MINI_CART_DELETE_POPUP}
    #Click ok button to delete
    Click Element    ${MINI_CART_DELETE_POPUP_OK_BUTTON}
    Wait Until Element Is Not Visible    ${MINI_CART_DELETE_POPUP}
    #Get minicart count
    ${MINICART_COUNT_DELETE}=    Get Text    xpath=//span[@class="counter-label"]
    Log To Console    Get count on minicart icon after deleted = ${MINICART_COUNT_DELETE}
    Sleep    1s
    #Verify Mini cart is empty
    Click Element    ${MINI_CART_ICON}
    Sleep    2s
    Wait Until Element Contains    ${MINI_CART_POPUP}    ${MINI_CART_POPUP_TEXT}
    #Click on Mini cart icon again to hide mini cart popup
    Click Element    ${MINI_CART_ICON}
    Delete All Cookies
    Close Browser

Header-Mini Cart_TC_2: Add/Edit/Delete Product_Mini Cart_Register
    #Open Browser
    Open Website
    #Accept the Cookies
    Accept Cookies
    #Login
    Login    bn.nuey.kittiya@gmail.com    Bn12345678/
    #----------------------- Add Product in minicart -------------------------------
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
    Wait Until Element Contains    xpath=//div[@class="crumbName container"]    Mynx Love Tee
    Sleep    4s
    Click Element    xpath=//button[@id="product-addtocart-button"]
    #Check success message
    Wait Until Element Contains   xpath=//div[@class="modal-inner-wrap"]//h1[contains(text(),'success')]    SUCCESS
    #Click on OK button
    Click Element    xpath=//footer[@class="modal-footer"]//button[@class="action-primary action-accept"]
    #Get minicart count
    ${MINICART_COUNT}=    Get Text    xpath=//span[@class="counter-label"]
    Log To Console    Get count on minicart icon = ${MINICART_COUNT}
    #----------------------- Edit Product in minicart -------------------------------
    #Click Mini cart icon
    Click Element    ${MINI_CART_ICON}
    Wait Until Page Contains Element    ${MINI_CART_POPUP}
    #Click Increase button
    Click Element    ${MINI_CART_INCREASE}
    Wait Until Page Contains Element    ${MINI_CART_UPDATE_BUTTON}
    #Click update button
    Click Element    ${MINI_CART_UPDATE_BUTTON}
    Sleep    2s
    ${MINICART_COUNT_UPDATE}=    Get Text    xpath=//span[@class="counter-label"]
    Log To Console    Get count on minicart icon update = ${MINICART_COUNT}
    Sleep    1s
    #----------------------- Delete Product in minicart -------------------------------
    #Click on delete icon
    Click Element    ${MINI_CART_DELETE_ICON}
    #Verify delete popup
    Wait Until Page Contains Element    ${MINI_CART_DELETE_POPUP}
    #Click ok button to delete
    Click Element    ${MINI_CART_DELETE_POPUP_OK_BUTTON}
    Wait Until Element Is Not Visible    ${MINI_CART_DELETE_POPUP}
    #Get minicart count
    ${MINICART_COUNT_DELETE}=    Get Text    xpath=//span[@class="counter-label"]
    Log To Console    Get count on minicart icon after deleted: ${MINICART_COUNT_DELETE}
    Sleep    1s
    #Verify Mini cart is empty
    Click Element    ${MINI_CART_ICON}
    Sleep    2s
    Wait Until Element Contains    ${MINI_CART_POPUP}    ${MINI_CART_POPUP_TEXT}
    #Click on Mini cart icon again to hide mini cart popup
    Click Element    ${MINI_CART_ICON}
    Delete All Cookies
    Close Browser

Header-Mini Cart_TC_3: Search Product_Guest
    #Open Browser
    Open Website
    #Accept the Cookies
    Accept Cookies
    Sleep    1s
    #Click on Mini cart icon
    Click Element    ${MINI_CART_ICON}
    Sleep    1s
    #Verify Mini cart is empty
    Wait Until Element Contains    ${MINI_CART_POPUP}    ${MINI_CART_POPUP_TEXT}
    Delete All Cookies
    Close Browser

Header-Mini Cart_TC_4: Verify Bag Empty Message_Register
    #Open Browser
    Open Website
    #Accept the Cookies
    Accept Cookies
    #Login
    Login    bn.nuey.kittiya@gmail.com    Bn12345678/
    #Click on Mini cart icon
    Click Element    ${MINI_CART_ICON}
    Sleep    1s
    #Verify Mini cart is empty
    Wait Until Element Contains    ${MINI_CART_POPUP}    ${MINI_CART_POPUP_TEXT}
    #Click on Mini cart icon again to hide mini cart popup
    Click Element    ${MINI_CART_ICON}
    Logout
    Delete All Cookies
    Close Browser

Header-Mini Cart_TC_5: To verify guest user view the shopping bag page
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
    Wait Until Element Contains    xpath=//div[@class="crumbName container"]    Mynx Love Tee
    Sleep    4s
    Click Element    xpath=//button[@id="product-addtocart-button"]
    #Check success message
    Wait Until Element Contains   xpath=//div[@class="modal-inner-wrap"]//h1[contains(text(),'success')]    SUCCESS
    #Click on OK button
    Click Element    xpath=//footer[@class="modal-footer"]//button[@class="action-primary action-accept"]
    #Get minicart count
    ${MINICART_COUNT}=    Get Text    xpath=//span[@class="counter-label"]
    Log To Console    Get count on minicart icon: ${MINICART_COUNT}
    #Click on Minicart icon
    Click Element    ${MINI_CART_ICON}
    #Click on View my bag button
    Wait Until Page Contains Element    ${VIEW_MY_BAG_BUTTON}
    Click Element    ${VIEW_MY_BAG_BUTTON}
    #---------------------- VIEW MY BAG Page --------------------------------
    #Verify View my bag page
    Wait Until Page Contains    My Bag
    #Close Free gift popup
    Wait Until Page Contains Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    Sleep    2s
    Click Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP_CLOSE}
    Wait Until Element Is Not Visible    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    #Verify the move to wish list button
    Wait Until Page Contains Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_MOVE_TO_WISTLIST}
    #Verify the Delete button in view bags
    Wait Until Page Contains Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_REMOVE_ITEM}
    #Verify the Order Summary in view bags
    Wait Until Page Contains Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION}
    #Verify the subtotal in view bags
    Wait Until Page Contains Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_SUBTOTAL}
    #Verify the total in view bags 
    Wait Until Page Contains Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_TOTAL}
    #Verify the checkout button in view bags
    Wait Until Page Contains Element    ${VIEW_MY_BAG_CHECKOUT_BUTTON}
    #Check Product Name
    ${LOG_MYBAG_PRODUCT_NAME}=    Get Text    xpath=//div[@class="product-item-details"]/strong/a
    Log To Console    My bag pag: Product Name is ${LOG_MYBAG_PRODUCT_NAME}
    #Check Product Price
    ${LOG_MYBAG_PRODUCT_PRICE}=    Get Text    xpath=//div[@class="col subtotal"]//span[@class="price"]/span
    Log To Console    My bag pag: Product Price is ${LOG_MYBAG_PRODUCT_PRICE}
    #Check Product color
    ${LOG_MYBAG_PRODUCT_COLOR}    Get Text    xpath=//table[@id="shopping-cart-table"]/tbody[1]//div[contains(text(), "Color")]/ancestor::li[@class="list-options"]/div[@class="values"]
    Log To Console    My bag pag: Product Color is ${LOG_MYBAG_PRODUCT_COLOR}
    #Check the size
    ${LOG_MYBAG_PRODUCT_SIZE}    Get Text    xpath=//table[@id="shopping-cart-table"]//tbody//tr//td//li[@class="list-options"]//div[contains(text(),'Size')]/ancestor::li[@class="list-options"]/div[@class="values"]
    Log To Console    My bag pag: Product Size is ${LOG_MYBAG_PRODUCT_SIZE}
    #Check Product Quantity
    ${LOG_MYBAG_PRODUCT_QTY}    Get Value    xpath=//table[@id="shopping-cart-table"]//tbody//div[@class="product-item-details"]//ancestor::tr[@class="item-info"]//div[@class="field qty"]//input[contains(@id,"qty")]
    Log To Console    My bag pag: Product Qty is ${LOG_MYBAG_PRODUCT_QTY}
    #Verify the Promotion Code section on My Bag page
    Wait Until Page Contains Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SECTION}
    #Verify Gift box section
    Wait Until Page Contains Element    ${VIEW_MY_BAG_GIFT_BOX_SECTION}
    #Verify Free gift section
    Wait Until Page Contains Element    ${VIEW_MY_BAG_FREE_GIFT_SECTION}
    #Click delete button
    Click Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_REMOVE_ITEM}
    #Verify my bag page is empty
    Wait Until Page Contains    Your shopping bag is empty.
    Delete All Cookies
    Close Browser

Header-Mini Cart_TC_6: To verify guest user view the shopping bag page.
    #Open Browser
    Open Website
    #Accept the Cookies
    Accept Cookies
    #Login
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
    Wait Until Element Contains    xpath=//div[@class="crumbName container"]    Mynx Love Tee
    Sleep    4s
    Click Element    xpath=//button[@id="product-addtocart-button"]
    #Check success message
    Wait Until Element Contains   xpath=//div[@class="modal-inner-wrap"]//h1[contains(text(),'success')]    SUCCESS
    #Click on OK button
    Click Element    xpath=//footer[@class="modal-footer"]//button[@class="action-primary action-accept"]
    #Get minicart count
    ${MINICART_COUNT}=    Get Text    xpath=//span[@class="counter-label"]
    Log To Console    Get count on minicart icon: ${MINICART_COUNT}
    #Click on Minicart icon
    Click Element    ${MINI_CART_ICON}
    #Click on View my bag button
    Wait Until Page Contains Element    ${VIEW_MY_BAG_BUTTON}
    Click Element    ${VIEW_MY_BAG_BUTTON}
    #---------------------- VIEW MY BAG Page --------------------------------
    #Verify View my bag page
    Wait Until Page Contains    My Bag
    #Close Free gift popup
    Wait Until Page Contains Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    Sleep    2s
    Click Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP_CLOSE}
    Wait Until Element Is Not Visible    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    #Verify the move to wish list button
    Wait Until Page Contains Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_MOVE_TO_WISTLIST_REGISER_USER}
    #Verify the Delete button in view bags
    Wait Until Page Contains Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_REMOVE_ITEM}
    #Verify the Order Summary in view bags
    Wait Until Page Contains Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION}
    #Verify the subtotal in view bags
    Wait Until Page Contains Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_SUBTOTAL}
    #Verify the total in view bags 
    Wait Until Page Contains Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_TOTAL}
    #Verify the checkout button in view bags
    Wait Until Page Contains Element    ${VIEW_MY_BAG_CHECKOUT_BUTTON}
    #Check Product Name
    ${LOG_MYBAG_PRODUCT_NAME}=    Get Text    xpath=//div[@class="product-item-details"]/strong/a
    Log To Console    My bag pag: Product Name is ${LOG_MYBAG_PRODUCT_NAME}
    #Check Product Price
    ${LOG_MYBAG_PRODUCT_PRICE}=    Get Text    xpath=//div[@class="col subtotal"]//span[@class="price"]/span
    Log To Console    My bag pag: Product Price is ${LOG_MYBAG_PRODUCT_PRICE}
    #Check Product color
    ${LOG_MYBAG_PRODUCT_COLOR}    Get Text    xpath=//table[@id="shopping-cart-table"]/tbody[1]//div[contains(text(), "Color")]/ancestor::li[@class="list-options"]/div[@class="values"]
    Log To Console    My bag pag: Product Color is ${LOG_MYBAG_PRODUCT_COLOR}
    #Check the size
    ${LOG_MYBAG_PRODUCT_SIZE}    Get Text    xpath=//table[@id="shopping-cart-table"]//tbody//tr//td//li[@class="list-options"]//div[contains(text(),'Size')]/ancestor::li[@class="list-options"]/div[@class="values"]
    Log To Console    My bag pag: Product Size is ${LOG_MYBAG_PRODUCT_SIZE}
    #Check Product Quantity
    ${LOG_MYBAG_PRODUCT_QTY}    Get Value    xpath=//table[@id="shopping-cart-table"]//tbody//div[@class="product-item-details"]//ancestor::tr[@class="item-info"]//div[@class="field qty"]//input[contains(@id,"qty")]
    Log To Console    My bag pag: Product Qty is ${LOG_MYBAG_PRODUCT_QTY}
    #Verify the Promotion Code section on My Bag page
    Wait Until Page Contains Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SECTION}
    #Verify Gift box section
    Wait Until Page Contains Element    ${VIEW_MY_BAG_GIFT_BOX_SECTION}
    #Verify Free gift section
    Wait Until Page Contains Element    ${VIEW_MY_BAG_FREE_GIFT_SECTION}
    #Click delete button
    Click Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_REMOVE_ITEM}
    #Verify my bag page is empty
    Wait Until Page Contains    Your shopping bag is empty.
    Logout
    Delete All Cookies
    Close Browser

Header-Mini Cart_TC_7: To verify guest able to delete the product from shopping bag page.
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
    Wait Until Element Contains    xpath=//div[@class="crumbName container"]    Mynx Love Tee
    Sleep    4s
    Click Element    xpath=//button[@id="product-addtocart-button"]
    #Check success message
    Wait Until Element Contains   xpath=//div[@class="modal-inner-wrap"]//h1[contains(text(),'success')]    SUCCESS
    #Click on OK button
    Click Element    xpath=//footer[@class="modal-footer"]//button[@class="action-primary action-accept"]
    #Get minicart count
    ${MINICART_COUNT}=    Get Text    xpath=//span[@class="counter-label"]
    Log To Console    Get count on minicart icon: ${MINICART_COUNT}
    #Click on Minicart icon
    Click Element    ${MINI_CART_ICON}
    #Click on View my bag button
    Wait Until Page Contains Element    ${VIEW_MY_BAG_BUTTON}
    Click Element    ${VIEW_MY_BAG_BUTTON}
    #---------------------- VIEW MY BAG Page --------------------------------
    #Verify View my bag page
    Wait Until Page Contains    My Bag
    #Close Free gift popup
    Wait Until Page Contains Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    Sleep    2s
    Click Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP_CLOSE}
    Wait Until Element Is Not Visible    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    #Verify the Delete button in view bags
    Wait Until Page Contains Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_REMOVE_ITEM}
    #Click delete button
    Click Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_REMOVE_ITEM}
    #Verify my bag page is empty
    Wait Until Page Contains    Your shopping bag is empty.
    Delete All Cookies
    Close Browser

Header-Mini Cart_TC_8: To verify registered customer able to delete the product from shopping bag page.
    #Open Browser
    Open Website
    #Accept the Cookies
    Accept Cookies
    #Login
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
    Wait Until Element Contains    xpath=//div[@class="crumbName container"]    Mynx Love Tee
    Sleep    4s
    Click Element    xpath=//button[@id="product-addtocart-button"]
    #Check success message
    Wait Until Element Contains   xpath=//div[@class="modal-inner-wrap"]//h1[contains(text(),'success')]    SUCCESS
    #Click on OK button
    Click Element    xpath=//footer[@class="modal-footer"]//button[@class="action-primary action-accept"]
    #Get minicart count
    ${MINICART_COUNT}=    Get Text    xpath=//span[@class="counter-label"]
    Log To Console    Get count on minicart icon: ${MINICART_COUNT}
    Sleep    2s
    #Click on Minicart icon
    Click Element    ${MINI_CART_ICON}
    #Click on View my bag button
    Wait Until Page Contains Element    ${VIEW_MY_BAG_BUTTON}
    Click Element    ${VIEW_MY_BAG_BUTTON}
    #---------------------- VIEW MY BAG Page --------------------------------
    #Verify View my bag page
    Wait Until Page Contains    My Bag
    #Close Free gift popup
    Wait Until Page Contains Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    Sleep    5s
    Click Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP_CLOSE}
    Wait Until Element Is Not Visible    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    #Verify the Delete button in view bags
    Wait Until Page Contains Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_REMOVE_ITEM}
    #Click delete button
    Click Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_REMOVE_ITEM}
    #Verify my bag page is empty
    Wait Until Page Contains    Your shopping bag is empty.
    Delete All Cookies
    Close Browser

Header-Mini Cart_TC_9: To verify guest able to Update the product quantity from shopping bag page.
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
    Wait Until Element Contains    xpath=//div[@class="crumbName container"]    Mynx Love Tee
    Sleep    4s
    Click Element    xpath=//button[@id="product-addtocart-button"]
    #Check success message
    Wait Until Element Contains   xpath=//div[@class="modal-inner-wrap"]//h1[contains(text(),'success')]    SUCCESS
    #Click on OK button
    Click Element    xpath=//footer[@class="modal-footer"]//button[@class="action-primary action-accept"]
    #Get minicart count
    ${MINICART_COUNT}=    Get Text    xpath=//span[@class="counter-label"]
    Log To Console    Get count on minicart icon: ${MINICART_COUNT}
    #Click on Minicart icon
    Click Element    ${MINI_CART_ICON}
    #Click on View my bag button
    Wait Until Page Contains Element    ${VIEW_MY_BAG_BUTTON}
    Click Element    ${VIEW_MY_BAG_BUTTON}
    #---------------------- VIEW MY BAG Page --------------------------------
    #Verify View my bag page
    Wait Until Page Contains    My Bag
    #Close Free gift popup
    Wait Until Page Contains Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    Sleep    5s
    Click Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP_CLOSE}
    Wait Until Element Is Not Visible    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    #Click on the increase button to update the product
    Wait Until Page Contains Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_INCREASE_QTY}
    Click Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_INCREASE_QTY}
    Sleep    4s
    #Get Minicart Count updated
    ${MINICART_COUNT_UPDATE}=    Get Text    xpath=//span[@class="counter-label"]
    Log To Console    Get count on minicart icon update to: ${MINICART_COUNT_UPDATE}
    Sleep    2s
    Delete All Cookies
    Close Browser

Header-Mini Cart_TC_10: To verify registered customer able to Update the product quantity from shopping bag page.
    #Open Browser
    Open Website
    #Accept the Cookies
    Accept Cookies
    #Login
    Login    bn.nuey.kittiya@gmail.com    Bn12345678/
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
    Wait Until Element Contains    xpath=//div[@class="crumbName container"]    Mynx Love Tee
    Sleep    4s
    Click Element    xpath=//button[@id="product-addtocart-button"]
    #Check success message
    Wait Until Element Contains   xpath=//div[@class="modal-inner-wrap"]//h1[contains(text(),'success')]    SUCCESS
    #Click on OK button
    Click Element    xpath=//footer[@class="modal-footer"]//button[@class="action-primary action-accept"]
    #Get minicart count
    ${MINICART_COUNT}=    Get Text    xpath=//span[@class="counter-label"]
    Log To Console    Get count on minicart icon: ${MINICART_COUNT}
    #Click on Minicart icon
    Click Element    ${MINI_CART_ICON}
    #Click on View my bag button
    Wait Until Page Contains Element    ${VIEW_MY_BAG_BUTTON}
    Click Element    ${VIEW_MY_BAG_BUTTON}
    #---------------------- VIEW MY BAG Page --------------------------------
    #Verify View my bag page
    Wait Until Page Contains    My Bag
    #Close Free gift popup
    Wait Until Page Contains Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    Sleep    3s
    Click Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP_CLOSE}
    Wait Until Element Is Not Visible    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    #Click on the increase button to update the product
    Wait Until Page Contains Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_INCREASE_QTY}
    Click Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_INCREASE_QTY}
    Sleep    2s
    #Waiting for loading
    Wait Until Page Contains Element    xpath=//body[contains(@class,"view page-load")]
    Sleep    2s
    #Close Free gift popup
    Wait Until Page Contains Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    Sleep    3s
    Click Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP_CLOSE}
    Wait Until Element Is Not Visible    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    #Get Minicart Count updated
    ${MINICART_COUNT_UPDATE}=    Get Text    xpath=//span[@class="counter-label"]
    Log To Console    Get count on minicart icon update to: ${MINICART_COUNT_UPDATE}
    Logout
    Delete All Cookies
    Close Browser
Header-Mini Cart_TC_11: To verify guest customer able to add product to Wishlist from shopping bag page.
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
    Wait Until Element Contains    xpath=//div[@class="crumbName container"]    Mynx Love Tee
    Sleep    4s
    Click Element    xpath=//button[@id="product-addtocart-button"]
    #Check success message
    Wait Until Element Contains   xpath=//div[@class="modal-inner-wrap"]//h1[contains(text(),'success')]    SUCCESS
    #Click on OK button
    Click Element    xpath=//footer[@class="modal-footer"]//button[@class="action-primary action-accept"]
    #Get minicart count
    ${MINICART_COUNT}=    Get Text    xpath=//span[@class="counter-label"]
    Log To Console    Get count on minicart icon: ${MINICART_COUNT}
    #Click on Minicart icon
    Click Element    ${MINI_CART_ICON}
    #Click on View my bag button
    Wait Until Page Contains Element    ${VIEW_MY_BAG_BUTTON}
    Click Element    ${VIEW_MY_BAG_BUTTON}
    #---------------------- VIEW MY BAG Page --------------------------------
    #Verify View my bag page
    Wait Until Page Contains    My Bag
    #Close Free gift popup
    Wait Until Page Contains Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    Sleep    5s
    Click Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP_CLOSE}
    Wait Until Element Is Not Visible    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    #Verify the Wishlist icon on Shopping bag page
    Wait Until Page Contains Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_MOVE_TO_WISTLIST}
    #Click on Wishlist icon on shopping bag
    Click Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_MOVE_TO_WISTLIST}
    #Verify the Login Popup on Shopping bag
    Wait Until Page Contains Element    ${LOGIN_POPUP}
    #Close Login popup
    Click Element    ${LOGIN_CLOSE_POPUP_BUTTON}
    Wait Until Element Is Not Visible    ${LOGIN_POPUP}
    #Verify the Delete button in view bags
    Wait Until Page Contains Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_REMOVE_ITEM}
    Sleep    1s
    #Click delete button
    Click Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_REMOVE_ITEM}
    #Verify my bag page is empty
    Wait Until Page Contains    Your shopping bag is empty.
    Delete All Cookies
    Close Browser

Header-Mini Cart_TC_12: To verify guest customer able to add product to Wishlist from shopping bag page.
    #Open Browser
    Open Website
    #Accept the Cookies
    Accept Cookies
    #Login
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
    Wait Until Element Contains    xpath=//div[@class="crumbName container"]    Mynx Love Tee
    Sleep    4s
    Click Element    xpath=//button[@id="product-addtocart-button"]
    #Check success message
    Wait Until Element Contains   xpath=//div[@class="modal-inner-wrap"]//h1[contains(text(),'success')]    SUCCESS
    #Click on OK button
    Click Element    xpath=//footer[@class="modal-footer"]//button[@class="action-primary action-accept"]
    #Get minicart count
    ${MINICART_COUNT}=    Get Text    xpath=//span[@class="counter-label"]
    Log To Console    Get count on minicart icon: ${MINICART_COUNT}
    #Click on Minicart icon
    Sleep    1s
    Click Element    ${MINI_CART_ICON}
    #Click on View my bag button
    Wait Until Page Contains Element    ${VIEW_MY_BAG_BUTTON}
    Click Element    ${VIEW_MY_BAG_BUTTON}
    #---------------------- VIEW MY BAG Page --------------------------------
    #Verify View my bag page
    Wait Until Page Contains    My Bag
    #Close Free gift popup
    Wait Until Page Contains Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    Sleep    5s
    Click Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP_CLOSE}
    Wait Until Element Is Not Visible    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    #Verify the Wishlist icon on Shopping bag page
    Sleep    2s
    Wait Until Page Contains Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_MOVE_TO_WISTLIST_REGISER_USER}
    #Click on Wishlist icon on shopping bag
    Sleep    2s
    Click Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_MOVE_TO_WISTLIST_REGISER_USER}
    #Verify the Wishlist success popup on Shopping bag
    Wait Until Page Contains Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_MOVE_TO_WISTLIST_REGISER_USER_SUCCESS_POPUP}
    #Verfiy the Success message on Wishlist popup
    Sleep    5s
    Wait Until Page Contains Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_MOVE_TO_WISTLIST_REGISER_USER_SUCCESS_MASSAGE}
    Get Text    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_MOVE_TO_WISTLIST_REGISER_USER_SUCCESS_MASSAGE}
    #Click on OK button on Wishlist popup
    Click Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_MOVE_TO_WISTLIST_REGISER_USER_SUCCESS_POPUP_OK_BUTTON}
    Wait Until Element Is Not Visible    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_MOVE_TO_WISTLIST_REGISER_USER_SUCCESS_POPUP}
    Sleep    2s
    #Click on Login icon
    Click Element    ${LOGIN_ICON}
    Wait Until Page Contains Element    ${LOGIN_MENU}
    #Select My withlist menu
    Click Element    xpath=//div[@class="header-links-menu panel header arrow_box"]//ul[@class="header links"]//li[@class="link wishlist"]//a[@href="https://mcstaging-2-4.mistymynx.com/en/wishlist/"][contains(text(),"My Wishlist")]
    #Verify My wishlist page
    Wait Until Page Contains    MY WISHLIST
    #Verify product in wishlist page
    Wait Until Page Contains Element    xpath=//strong[@class="product-item-name"]//a[@title="Mynx Love Tee"]
    Sleep    2s
    Logout
    Delete All Cookies
    Close Browser
    
Header-Mini Cart_TC_13: To verify guest customer is not able to see JPS section.
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
    Wait Until Element Contains    xpath=//div[@class="crumbName container"]    Mynx Love Tee
    Sleep    4s
    Click Element    xpath=//button[@id="product-addtocart-button"]
    #Check success message
    Wait Until Element Contains   xpath=//div[@class="modal-inner-wrap"]//h1[contains(text(),'success')]    SUCCESS
    #Click on OK button
    Click Element    xpath=//footer[@class="modal-footer"]//button[@class="action-primary action-accept"]
    #Get minicart count
    ${MINICART_COUNT}=    Get Text    xpath=//span[@class="counter-label"]
    Log To Console    Get count on minicart icon: ${MINICART_COUNT}
    #Click on Minicart icon
    Click Element    ${MINI_CART_ICON}
    #Click on View my bag button
    Wait Until Page Contains Element    ${VIEW_MY_BAG_BUTTON}
    Click Element    ${VIEW_MY_BAG_BUTTON}
    #---------------------- VIEW MY BAG Page --------------------------------
    #Verify View my bag page
    Wait Until Page Contains    My Bag
    #Close Free gift popup
    Wait Until Page Contains Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    Sleep    5s
    Click Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP_CLOSE}
    Wait Until Element Is Not Visible    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    #Verify the Order Information title on my bag page
    Wait Until Page Contains Element    xpath=//div[@class="cart-summary"]//strong[text()="Order Information"]
    #Verify JPS Club section Shoul not show on my bag page
    Wait Until Element Does Not Contain    xpath=//div[@class="cart-summary"]    JPS Club
    Delete All Cookies
    Close Browser  

Header-Mini Cart_TC_14: To verify as guest customer is able to Redeem promotion code
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
    Wait Until Element Contains    xpath=//div[@class="crumbName container"]    Mynx Love Tee
    Sleep    4s
    Click Element    xpath=//button[@id="product-addtocart-button"]
    #Check success message
    Wait Until Element Contains   xpath=//div[@class="modal-inner-wrap"]//h1[contains(text(),'success')]    SUCCESS
    #Click on OK button
    Click Element    xpath=//footer[@class="modal-footer"]//button[@class="action-primary action-accept"]
    #Get minicart count
    ${MINICART_COUNT}=    Get Text    xpath=//span[@class="counter-label"]
    Log To Console    Get count on minicart icon: ${MINICART_COUNT}
    #Click on Minicart icon
    Click Element    ${MINI_CART_ICON}
    #Click on View my bag button
    Wait Until Page Contains Element    ${VIEW_MY_BAG_BUTTON}
    Click Element    ${VIEW_MY_BAG_BUTTON}
    #---------------------- VIEW MY BAG Page --------------------------------
    #Verify View my bag page
    Wait Until Page Contains    My Bag
    #Close Free gift popup
    Wait Until Page Contains Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    Sleep    5s
    Click Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP_CLOSE}
    Wait Until Element Is Not Visible    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    #Verify the Order Information title on my bag page
    Wait Until Page Contains Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION}
    #Verify the Bag sub total on My bag page
    Wait Until Page Contains Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_SUBTOTAL}
    #Get subtotal
    ${SUBTOTAL_VALUE}=    Get Value    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_SUBTOTAL_VALUE}
    Log To Console    Subtotal is ${SUBTOTAL_VALUE}
    #Verify the Bag total on My Bag page
    Wait Until Page Contains Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_TOTAL}
    #Get Total
    ${TOTAL_VALUE}=    Get Value    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_TOTAL_VALUE}
    Log To Console    Subtotal is ${TOTAL_VALUE}
    #Verify the Promotion Code on My Bag page
    Wait Until Page Contains Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SECTION}
    #Click on Promotion code to enter the code
    Click Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SECTION}
    Input Text    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SECTION_PROMOTION_CODE_FIELD}    ${PROMOTION_CODE}
    #Click on Apply Button
    Click Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SECTION_APPLY_BUTTON}
    Sleep    3s
    #Verify the Success message of Promo Code
    Wait Until Page Contains Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SUCCESS_POPUP}
    Wait Until Page Contains Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SUCCESS_MASSEGE}
    #Get Promo success massage
    ${PROMOTION_CODE_SUCCESS_MASSEGE}=    Get Text    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SUCCESS_MASSEGE}
    Log To Console    Promo success massage is ${PROMOTION_CODE_SUCCESS_MASSEGE}
    #Click on OK button to Confirm
    Click Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SUCCESS_OK_BUTTTON}
    #Verify the Coupon discount on My Bag page
    Wait Until Page Contains Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_DISCOUNT}
    Execute Javascript    window.scrollTo(0, 0)
    ${PROMOTION_DISCOUNT}=    Get Value    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_DISCOUNT_VALUE}
    Log To Console    Promotion discount is ${PROMOTION_DISCOUNT}
    #Verify the Bag total on My Bag page
    Wait Until Page Contains Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_TOTAL}
    #Get Total
    ${UPDATED_TOTAL_VALUE}=    Get Value    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_TOTAL_VALUE}
    Log To Console    Subtotal is ${UPDATED_TOTAL_VALUE}
    #Close Free gift popup
    Wait Until Page Contains Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    Sleep    3s
    Click Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP_CLOSE}
    Wait Until Element Is Not Visible    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    #Verify the Delete button in view bags
    Wait Until Page Contains Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_REMOVE_ITEM}
    Sleep    5s
    #Click delete button
    Click Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_REMOVE_ITEM}
    #Verify my bag page is empty
    Wait Until Page Contains    Your shopping bag is empty.
    Delete All Cookies
    Close Browser

Header-Mini Cart_TC_15: To verify as register customer is able to Redeem promotion code.
    #Open Browser
    Open Website
    #Accept the Cookies
    Accept Cookies
    #Login
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
    Wait Until Element Contains    xpath=//div[@class="crumbName container"]    Mynx Love Tee
    Sleep    4s
    Click Element    xpath=//button[@id="product-addtocart-button"]
    #Check success message
    Wait Until Element Contains   xpath=//div[@class="modal-inner-wrap"]//h1[contains(text(),'success')]    SUCCESS
    #Click on OK button
    Click Element    xpath=//footer[@class="modal-footer"]//button[@class="action-primary action-accept"]
    #Get minicart count
    ${MINICART_COUNT}=    Get Text    xpath=//span[@class="counter-label"]
    Log To Console    Get count on minicart icon: ${MINICART_COUNT}
    #Click on Minicart icon
    Sleep    2s
    Click Element    ${MINI_CART_ICON}
    #Click on View my bag button
    Wait Until Page Contains Element    ${VIEW_MY_BAG_BUTTON}
    Click Element    ${VIEW_MY_BAG_BUTTON}
    #---------------------- VIEW MY BAG Page --------------------------------
    #Verify View my bag page
    Wait Until Page Contains    My Bag
    #Close Free gift popup
    Wait Until Page Contains Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    Sleep    5s
    Click Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP_CLOSE}
    Wait Until Element Is Not Visible    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    #Verify the Order Information title on my bag page
    Wait Until Page Contains Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION}
    #Verify the Bag sub total on My bag page
    Wait Until Page Contains Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_SUBTOTAL}
    #Get subtotal
    ${SUBTOTAL_VALUE}=    Get Text    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_SUBTOTAL_VALUE}
    Log To Console    Subtotal is ${SUBTOTAL_VALUE}
    #Verify the Bag total on My Bag page
    Wait Until Page Contains Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_TOTAL}
    #Get Total
    ${TOTAL_VALUE}=    Get Text    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_TOTAL_VALUE}
    Log To Console    Subtotal is ${TOTAL_VALUE}
    #Verify the Promotion Code on My Bag page
    Wait Until Page Contains Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SECTION}
    #Click on Promotion code to enter the code
    Click Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SECTION}
    Input Text    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SECTION_PROMOTION_CODE_FIELD}    ${PROMOTION_CODE}
    #Click on Apply Button
    Click Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SECTION_APPLY_BUTTON}
    Sleep    3s
    #Verify the Success message of Promo Code
    Wait Until Page Contains Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SUCCESS_POPUP}
    Wait Until Page Contains Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SUCCESS_MASSEGE}
    #Get Promo success massage
    ${PROMOTION_CODE_SUCCESS_MASSEGE}=    Get Text    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SUCCESS_MASSEGE}
    Log To Console    Promo success massage is ${PROMOTION_CODE_SUCCESS_MASSEGE}
    #Click on OK button to Confirm
    Click Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_CODE_SUCCESS_OK_BUTTTON}
    #Verify the Coupon discount on My Bag page
    Wait Until Page Contains Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_DISCOUNT}
    Execute Javascript    window.scrollTo(0, 0)
    ${PROMOTION_DISCOUNT}=    Get Text    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_PROMOTION_DISCOUNT_VALUE}
    Log To Console    Promotion discount is ${PROMOTION_DISCOUNT}
    #Verify the Bag total on My Bag page
    Wait Until Page Contains Element    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_TOTAL}
    #Get Total
    ${UPDATED_TOTAL_VALUE}=    Get Text    ${VIEW_MY_BAG_ORDER_INFORMATION_SECTION_TOTAL_VALUE}
    Log To Console    Subtotal is ${UPDATED_TOTAL_VALUE}
    #Close Free gift popup
    Wait Until Page Contains Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    Sleep    3s
    Click Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP_CLOSE}
    Wait Until Element Is Not Visible    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    #Verify the Delete button in view bags
    Wait Until Page Contains Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_REMOVE_ITEM}
    Sleep    5s
    #Click delete button
    Click Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_REMOVE_ITEM}
    #Verify my bag page is empty
    Wait Until Page Contains    Your shopping bag is empty.
    Logout
    Delete All Cookies
    Close Browser

Header-Mini Cart_TC_16: To Verify customer able to add Free gift product to bag from shopping bag page.
    #Open Browser
    Open Website
    #Accept the Cookies
    Accept Cookies
    #Login
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
    Wait Until Element Contains    xpath=//div[@class="crumbName container"]    Mynx Love Tee
    Sleep    4s
    Click Element    xpath=//button[@id="product-addtocart-button"]
    #Check success message
    Wait Until Element Contains   xpath=//div[@class="modal-inner-wrap"]//h1[contains(text(),'success')]    SUCCESS
    #Click on OK button
    Click Element    xpath=//footer[@class="modal-footer"]//button[@class="action-primary action-accept"]
    #Get minicart count
    ${MINICART_COUNT}=    Get Text    xpath=//span[@class="counter-label"]
    Log To Console    Get count on minicart icon: ${MINICART_COUNT}
    #Click on Minicart icon
    Sleep    2s
    Click Element    ${MINI_CART_ICON}
    #Click on View my bag button
    Wait Until Page Contains Element    ${VIEW_MY_BAG_BUTTON}
    Click Element    ${VIEW_MY_BAG_BUTTON}
    #---------------------- VIEW MY BAG Page --------------------------------
    #Verify View my bag page
    Wait Until Page Contains    My Bag
    #Verify Free gift popup
    Wait Until Page Contains Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    Sleep    5s
    #Verify the Product Image on Free Gift Popup
    Wait Until Page Contains Element    xpath=//div[@class="ampromo-popup-container"]//div[@class="container products-grid"]//ol[@class="product-items row"]//li[1]//div[@class="product-item-info"]//img[@class="product-image-photo"]
    #Verify the Product Name on Free Gift Popup
    Wait Until Page Contains Element    xpath=//div[@class="product details product-item-details"]//strong[@class="product name product-item-name"]
    #Get the Product Name on Free Gift Popup
    ${FREE_GIFT_PRODUCT_NAME_IN_FREE_GIFT_POPUP}=    Get Text    xpath=//div[@class="product details product-item-details"]//strong[@class="product name product-item-name"]
    Log To Console    Free gift product name is ${FREE_GIFT_PRODUCT_NAME_IN_FREE_GIFT_POPUP}
    Sleep    5s
    #Click increase Qty
    Click Element    xpath=//div[@class="ampromo-popup-container"]//div[@class="container products-grid"]//ol[@class="product-items row"]//li[1]//div[@class="ampromo-item-qty-input"]//span[@class="increaseQty"]
    #Get the Product qty on Free Gift Popup
    Sleep    5s
    ${PRODUCT_QTY_IN_FREE_GIFT_POPUP}=    Get Text    xpath=//div[@class="ampromo-popup-container"]//div[@class="container products-grid"]//ol[@class="product-items row"]//li[1]//input[@title="QTY Select"]
    Log To Console    QTY_IN_FREE_GIFT_POPUP is ${PRODUCT_QTY_IN_FREE_GIFT_POPUP}
    #Click add to bag button
    Sleep    5s
    Click Element    xpath=//div[@class="ampromo-popup-container"]//div[@class="container products-grid"]//button[@class="action tocart btn btn--primary ampromo-button"]
    #Close Free gift popup
    Wait Until Page Contains Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    Sleep    5s
    Click Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP_CLOSE}
    Wait Until Element Is Not Visible    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    #Verify Free gift title in Free gift section on My bag page
    Sleep    2s
    Wait Until Page Contains Element    xpath=//span[@class="free-gift-title"][text()="Free Gift"]
    #Verify Product in Free gift section on My bag page
    Wait Until Page Contains Element    xpath=//tbody[@class="cart item free-gift free-gift-block"]//strong[@class="product-item-name"]
    #Get the Product name in Free gift section on My bag page
    ${FREE_GIFT_PRODUCT_NAME_IN_MY_BAG}=    Get Text    xpath=//tbody[@class="cart item free-gift free-gift-block"]//strong[@class="product-item-name"]
    Log To Console    Free gift product name is ${FREE_GIFT_PRODUCT_NAME_IN_MY_BAG}
    #Get the Product qty in Free gift section on My bag page
    ${PRODUCT_QTY_IN_MY_BAG}=    Get Text    xpath=//tbody[@class="cart item free-gift free-gift-block"]//ul[@class="item-options options-list"]//li[@class="list-options"]//div[@class="values"]
    Log To Console    QTY_IN_MY_BAG is ${PRODUCT_QTY_IN_MY_BAG}
   
    #Verify qty on Free Gift Popup should be equal to qty in Free gift section on My bag page
    IF    '${PRODUCT_QTY_IN_FREE_GIFT_POPUP}'=='${PRODUCT_QTY_IN_MY_BAG}'
        #Verify the Delete button in view bags
        Wait Until Page Contains Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_REMOVE_ITEM}
        Sleep    5s
        Log To Console    Qty on Free Gift Popup is equal to qty in Free gift section on My bag page.
        #Click delete button
        Click Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_REMOVE_ITEM}
        #Verify my bag page is empty
        Wait Until Page Contains    Your shopping bag is empty.
    ELSE
    Log To Console    Test Failed.
        
    END
    Logout
    Delete All Cookies
    Close Browser

Header-Mini Cart_TC_17: To Verify customer able to add Gift box product to bag from shopping bag page
    #Open Browser
    Open Website
    #Accept the Cookies
    Accept Cookies
    #Login
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
    Wait Until Element Contains    xpath=//div[@class="crumbName container"]    Mynx Love Tee
    Sleep    4s
    Click Element    xpath=//button[@id="product-addtocart-button"]
    #Check success message
    Wait Until Element Contains   xpath=//div[@class="modal-inner-wrap"]//h1[contains(text(),'success')]    SUCCESS
    #Click on OK button
    Click Element    xpath=//footer[@class="modal-footer"]//button[@class="action-primary action-accept"]
    #Get minicart count
    ${MINICART_COUNT}=    Get Text    xpath=//span[@class="counter-label"]
    Log To Console    Get count on minicart icon: ${MINICART_COUNT}
    #Click on Minicart icon
    Sleep    2s
    Click Element    ${MINI_CART_ICON}
    #Click on View my bag button
    Wait Until Page Contains Element    ${VIEW_MY_BAG_BUTTON}
    Click Element    ${VIEW_MY_BAG_BUTTON}
    #---------------------- VIEW MY BAG Page --------------------------------
    #Verify View my bag page
    Wait Until Page Contains    My Bag
    #Close Free gift popup
    Wait Until Page Contains Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    Sleep    5s
    Click Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP_CLOSE}
    Wait Until Element Is Not Visible    ${VIEW_MY_BAG_FREE_GIFT_POPUP}
    Sleep    3s
    #Verify Gift box section
    Wait Until Page Contains Element    ${VIEW_MY_BAG_GIFT_BOX_SECTION}
    #Verify Gift box Checkbox
    Wait Until Page Contains Element    xpath=//div[@class="giftwrap-wrapper list"]//div[@class="cart table-wrapper"]//div[@class="giftcart-items"]//div[@class="giftcart-item"][1]//div[@class="gift-checkox"]
    #Click Gift box Checkbox
    Click Element    xpath=//div[@class="giftwrap-wrapper list"]//div[@class="cart table-wrapper"]//div[@class="giftcart-items"]//div[@class="giftcart-item"][1]//div[@class="gift-checkox"]//input
    #Verify Gift box name
    Wait Until Page Contains Element    xpath=//div[@class="giftwrap-wrapper list"]//div[@class="cart table-wrapper"]//div[@class="giftcart-items"]//div[@class="giftcart-item"][1]//div[@class="gift-detail"]//span[@class="name"]
    #Get gift box name
    ${GIFT_BOX_NAME}=    Get Text    xpath=//div[@class="giftwrap-wrapper list"]//div[@class="cart table-wrapper"]//div[@class="giftcart-items"]//div[@class="giftcart-item"][1]//div[@class="gift-detail"]//span[@class="name"]
    Log To Console    GIFT_BOX_NAME is ${GIFT_BOX_NAME}   
    #Verify Gift box price
    Wait Until Page Contains Element    xpath=//div[@class="giftwrap-wrapper list"]//div[@class="cart table-wrapper"]//div[@class="giftcart-items"]//div[@class="giftcart-item"][1]//div[@class="gift-detail"]//span[@class="price"]
    #Get gift box price
    ${GIFT_BOX_PRICE}=    Get Text    xpath=//div[@class="giftwrap-wrapper list"]//div[@class="cart table-wrapper"]//div[@class="giftcart-items"]//div[@class="giftcart-item"][1]//div[@class="gift-detail"]//span[@class="price"]
    Log To Console    GIFT_BOX_NAME is ${GIFT_BOX_PRICE}
    Sleep    4s
    #Verify the Delete button in view bags
    Wait Until Page Contains Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_REMOVE_ITEM}
    #Click delete button
    Click Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_REMOVE_ITEM}
    #Verify my bag page is empty
    Wait Until Page Contains    Your shopping bag is empty.
    Logout
    Delete All Cookies
    Close Browser
