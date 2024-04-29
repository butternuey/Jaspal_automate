*** Settings ***
Library    SeleniumLibrary
Resource   variables.robot
Resource   keywords.robot

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
    Press Keys    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ENTER
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
    Wait Until Element Contains    ${MINI_CART_POPUP}    Your shopping bag is empty.
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
    Press Keys    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ENTER
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
    Wait Until Element Contains    ${MINI_CART_POPUP}    Your shopping bag is empty.
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
    Wait Until Element Contains    ${MINI_CART_POPUP}    Your shopping bag is empty.
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
    Wait Until Element Contains    ${MINI_CART_POPUP}    Your shopping bag is empty.
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
    Press Keys    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ENTER
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
    Press Keys    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ENTER
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
    Press Keys    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ENTER
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
    Press Keys    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ENTER
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
    Press Keys    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ENTER
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
    Press Keys    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ENTER
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
    Press Keys    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ENTER
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
    Press Keys    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ENTER
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
    Wait Until Page Contains Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_MOVE_TO_WISTLIST_REGISER_USER}
    #Click on Wishlist icon on shopping bag
    Click Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_MOVE_TO_WISTLIST_REGISER_USER}
    #Verify the Wishlist success popup on Shopping bag
    Wait Until Page Contains Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_MOVE_TO_WISTLIST_REGISER_USER_SUCCESS_POPUP}
    #Verfiy the Success message on Wishlist popup
    Wait Until Page Contains Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_MOVE_TO_WISTLIST_REGISER_USER_SUCCESS_MASSAGE}
    Get Text    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_MOVE_TO_WISTLIST_REGISER_USER_SUCCESS_MASSAGE}
    #Click on OK button on Wishlist popup
    Click Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_MOVE_TO_WISTLIST_REGISER_USER_SUCCESS_POPUP_OK_BUTTON}
    Wait Until Element Is Not Visible    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_MOVE_TO_WISTLIST_REGISER_USER_SUCCESS_POPUP}
    Logout
    Delete All Cookies
    Close Browser
    


