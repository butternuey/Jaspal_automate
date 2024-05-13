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
    Wait Until Element Contains   ${PDP_ADD_TO_CART_SUCCESS_POPUP}    ${SUCCESS_TEXT}
    #Click on OK button
    Click Element    ${PDP_ADD_TO_CART_SUCCESS_POPUP_OK_BUTTON}
    #Get minicart count
    ${MINICART_COUNT}=    Get Text    ${MINI_CART_COUNTER_LABEL}
    Log To Console    Get count on minicart icon = ${MINICART_COUNT}
    #Click minicart icon
    Sleep    1s
    Click Element    ${MINI_CART_ICON}
    #Verify the Checkout button on Mini cart
    Wait Until Element Contains    ${MINI_CART_CHECKOUT_BUTTON}    ${MINI_CART_CHECKOUT_BUTTON_TEXT}
    #Click on Checkout button on Mini Cart
    Click Element    ${MINI_CART_CHECKOUT_BUTTON}
    #--------------------------------------------- Shipping Page ---------------------------------------------------
    #Verify shipping page
    Wait Until Page Contains    ${SHIPPING_INFORMATION_TEXT}
    #Verify the Order Information title on Checkout page
    Wait Until Element Contains    ${SHIPPING_ORDER_INFORMATION_SECTION}    ${SHIPPING_ORDER_INFORMATION_SECTION_TEXT}
    #Verify the number of item Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_COUNT_ITEM}=    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_X_ITEM}
    Log To Console    ${SHIPPING_ORDER_INFORMATION_SECTION_COUNT_ITEM}
    #Verify the Subtotal on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL}=    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL_VALUE}
    Log To Console    Subtotal is ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL}
    #Verify the Shipping Fee on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE_VALUE}
    Log To Console    Shipping Fee is ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE} 
    #Verify the Total Price on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL_VALUE}
    Log To Console    Total is ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL}
    #Verify the item list title on Checkout page
    Wait Until Element Contains    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_SECCTION}    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_SECCTION_TEXT}
    Click Element    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_SECCTION}
    #Verify item name
    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_NAME}    Get Text   ${SHIPPING_ORDER_INFORMATION_SECTION_GET_ITEM_NAME}
    Log To Console    Item name is ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_NAME}  
    #Verify item original price
    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_ORIGINAL_PRICE}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_GET_ORIGINAL_PRICE}
    Log To Console    Original price is ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_ORIGINAL_PRICE} 
    #Verify item new price
    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_NEW_PRICE}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_GET_NEW_PRICE}
    Log To Console    New price is ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_NEW_PRICE}        
    #Verify item color
    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_COLOR}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_GET_COLOR}
    Log To Console    Item color is ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_COLOR}    
    #Verify item size
    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_SIZE}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_GET_SIZE}
    Log To Console    Item size is ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_SIZE}  
    #Verify item qty
    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_QTY}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_GET_QTY}
    Log To Console    item qty is ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_QTY} 
    #Verify the Email address field on Checkout page
    Wait Until Element Contains    ${SHIPPING_SHIPPING_SECTION_EMAIL}    ${SHIPPING_EMAIL_FIELD_TEXT}
    #FirstName
    Input Text    ${SHIPPING_SHIPPING_SECTION_FIRSTNAME_FIELD}   ${SHIPPING_FIRSTNAME}
    #LastName
    Input Text    ${SHIPPING_SHIPPING_SECTION_LASTNAME_FIELD}    ${SHIPPING_LASTNAME}
    #Email
    Input Text    ${SHIPPING_SHIPPING_SECTION_EMAIL_FIELD}    ${SHIPPING_EMAIL}
    #Country
    Click Element    ${SHIPPING_SHIPPING_SECTION_COUNTRY_THAILAND}
    #PDSD
    Click Element    ${SHIPPING_SHIPPING_SECTION_PDSD_FIELD}
    Click Element    ${SHIPPING_SHIPPING_SECTION_PDSD_P_BANGKOK}
    Click Element    ${SHIPPING_SHIPPING_SECTION_PDSD_D_MINBURI}
    Click Element    ${SHIPPING_SHIPPING_SECTION_PDSD_SD_MINBURI}
    #HouseNumber
    Input Text    ${SHIPPING_SHIPPING_SECTION_HOUSE_NUMBER_FIELD}    ${SHIPPING_HOUSENUMBER}
    #Building
    Input Text    ${SHIPPING_SHIPPING_SECTION_BUILDING_FIELD}    ${SHIPPING_BUILDING}
    #Floor
    Input Text    ${SHIPPING_SHIPPING_SECTION_FLOOR_FIELD}    ${SHIPPING_FLOOR}
    #Alley/Road 
    Input Text    ${SHIPPING_SHIPPING_SECTION_ALLEY/ROAD_FIELD}    ${SHIPPING_ROAD}
    #Phone Number
    Input Text    ${SHIPPING_SHIPPING_SECTION_PHONE_NUMBER_FIELD}    ${SHIPPING_PHONENUMBER}    
    Sleep    2s
    #PDPA_checkbox
    Click Element    ${SHIPPING_SHIPPING_SECTION_PDPA_CHECKBOX}
    #Subscription_checkbox
    Click Element    ${SHIPPING_SHIPPING_SECTION_SUBSCRIPTION_CHECKBOX}
    #Click Proceed to payment
    Click Element    ${SHIPPING_PROCEED_TO_PAYMENT_BUTTON} 
    #-------------------------- Payment Page -----------------------------------------------
    Sleep    3s
    Wait Until Page Contains    ${PAYMENT_SELECT_PAYMENT_METHOD_TEXT}
    #Select payment method
    Sleep    2s
    Click Element    ${PAYMENT_METHOD_COD}
    Sleep    2s
    #Click Proceed to Review Order button
    Click Element    ${PAYMENT_PROCEED_TO_REVIEW_BUTTON}
    #-------------------------- Review Order Page ---------------------------------------------
    Wait Until Page Contains    ${REVIEW_ORDER_TEXT}
    Wait Until Element Contains    ${REVIEW_ORDER_SHIPPING_SECTION}    ${REVIEW_ORDER_SHIPPING_TEXT}
    Wait Until Element Contains    ${REVIEW_ORDER_PAYMENT_SECTION}    ${REVIEW_ORDER_PAYMENT_TEXT}
    Wait Until Element Contains    ${REVIEW_ORDER_ITEM_LIST_SECTION}    ${REVIEW_ORDER_ITEM_LIST_TEXT}
    #Click Place Order button
    Click Element    ${REVIEW_ORDER_PLACE_ORDER}
    #-------------------------- Thank you Page -------------------------------------------------
    Sleep    2s
    Wait Until Element Contains    ${THANKYOU_SHIPPING_SECTION}    ${THANKYOU_SHIPPING_TEXT}
    Wait Until Element Contains    ${THANKYOU_PAYMENT_SECTION}    ${THANKYOU_PAYMENT_TEXT}
    Wait Until Element Contains    ${THANKYOU_ITEM_LIST_SECTION}    ${THANKYOU_ITEM_LIST_TEXT}
    ${GUEST_ORDER_NUMBER}=    Get Text    ${THANKYOU_GET_GUEST_ORDER_NUMBER}
    Log To Console    Order Number is ${GUEST_ORDER_NUMBER}   
    Sleep    3s

Checkout_TC_2: To verfiy registerd customer is able to see checkout page
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL_EXISTING_CUSTOMER}      ${LOGIN_PASSWORD_EXISTING_CUSTOMER}
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
    Wait Until Element Contains   ${PDP_ADD_TO_CART_SUCCESS_POPUP}    ${SUCCESS_TEXT}
    #Click on OK button
    Click Element    ${PDP_ADD_TO_CART_SUCCESS_POPUP_OK_BUTTON}
    #Get minicart count
    ${MINICART_COUNT}=    Get Text    ${MINI_CART_COUNTER_LABEL}
    Log To Console    Get count on minicart icon = ${MINICART_COUNT}
    #Click minicart icon
    Sleep    1s
    Click Element    ${MINI_CART_ICON}
    #Verify the Checkout button on Mini cart
    Wait Until Element Contains    ${MINI_CART_CHECKOUT_BUTTON}    ${MINI_CART_CHECKOUT_BUTTON_TEXT}
    #Click on Checkout button on Mini Cart
    Click Element    ${MINI_CART_CHECKOUT_BUTTON}
    Sleep    8s
    ${LANDING_PAGE}=    Run Keyword And Return Status    Page Should Contain    ${REVIEW_ORDER_TEXT}
    Sleep    3s
    IF    '${LANDING_PAGE}'=='${REVIEW_ORDER_TEXT}' 
        Click Element    ${REVIEW_ORDER_SHIPPING_EDIT_BUTTON}
    ELSE
    Wait Until Page Contains    ${SHIPPING_INFORMATION_TEXT}
        
    END
    #--------------------------------------------- Shipping Page ---------------------------------------------------
    #Verify the Order Information title on Checkout page
    Wait Until Element Contains    ${SHIPPING_ORDER_INFORMATION_SECTION}    ${SHIPPING_ORDER_INFORMATION_SECTION_TEXT}
    #Verify the number of item Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_COUNT_ITEM}=    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_X_ITEM}
    Log To Console    ${SHIPPING_ORDER_INFORMATION_SECTION_COUNT_ITEM}
    #Verify the Subtotal on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL}=    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL_VALUE}
    Log To Console    Subtotal is ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL}
    #Verify the Shipping Fee on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE_VALUE}
    Log To Console    Shipping Fee is ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE} 
    #Verify the Total Price on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL_VALUE}
    Log To Console    Total is ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL}
    Sleep    2s
    #Click Proceed to payment
    Click Element    ${SHIPPING_PROCEED_TO_PAYMENT_BUTTON}
    Sleep    3s
    #-------------------------- Payment Page ---------------------------------------------
    Wait Until Page Contains    ${PAYMENT_SELECT_PAYMENT_METHOD_TEXT}
    #Select payment method
    Sleep    2s
    Click Element    ${PAYMENT_METHOD_COD}
    Sleep    2s
    #Click Proceed to Review Order button
    Click Element    ${PAYMENT_PROCEED_TO_REVIEW_BUTTON}
    #-------------------------- Review Order Page ---------------------------------------------
    Wait Until Page Contains    ${REVIEW_ORDER_TEXT}
    Wait Until Element Contains    ${REVIEW_ORDER_SHIPPING_SECTION}    ${REVIEW_ORDER_SHIPPING_TEXT}
    Wait Until Element Contains    ${REVIEW_ORDER_PAYMENT_SECTION}    ${REVIEW_ORDER_PAYMENT_TEXT}
    Wait Until Element Contains    ${REVIEW_ORDER_ITEM_LIST_SECTION}    ${REVIEW_ORDER_ITEM_LIST_TEXT}
    #Click Place Order button
    Click Element    ${REVIEW_ORDER_PLACE_ORDER}
    #-------------------------- Thank you Page -------------------------------------------------
    Wait Until Element Contains    ${THANKYOU_SHIPPING_SECTION}    ${THANKYOU_SHIPPING_TEXT}
    Wait Until Element Contains    ${THANKYOU_PAYMENT_SECTION}    ${THANKYOU_PAYMENT_TEXT}
    Wait Until Element Contains    ${THANKYOU_ITEM_LIST_SECTION}    ${THANKYOU_ITEM_LIST_TEXT}
    ${REGISTER_ORDER_NUMBER}=    Get Text    ${THANKYOU_GET_REGISTER_ORDER_NUMBER}
    Log To Console    Order Number is ${REGISTER_ORDER_NUMBER}   
    Sleep    5s
    Logout
    Delete All Cookies
    Close Browser

Checkout_TC_3: To Verify registered customer able to add multiple shipping address in Shipping Details Tab during the checkout process.
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL_EXISTING_CUSTOMER}      ${LOGIN_PASSWORD_EXISTING_CUSTOMER}
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
    Wait Until Element Contains   ${PDP_ADD_TO_CART_SUCCESS_POPUP}    ${SUCCESS_TEXT}
    #Click on OK button
    Click Element    ${PDP_ADD_TO_CART_SUCCESS_POPUP_OK_BUTTON}
    #Get minicart count
    ${MINICART_COUNT}=    Get Text    ${MINI_CART_COUNTER_LABEL}
    Log To Console    Get count on minicart icon = ${MINICART_COUNT}
    #Click minicart icon
    Sleep    1s
    Click Element    ${MINI_CART_ICON}
    #Verify the Checkout button on Mini cart
    Wait Until Element Contains    ${MINI_CART_CHECKOUT_BUTTON}    ${MINI_CART_CHECKOUT_BUTTON_TEXT}
    #Click on Checkout button on Mini Cart
    Click Element    ${MINI_CART_CHECKOUT_BUTTON}
    Sleep    8s
    ${LANDING_PAGE}=    Run Keyword And Return Status    Page Should Contain    ${REVIEW_ORDER_TEXT}
    Sleep    3s
    IF    '${LANDING_PAGE}'=='${REVIEW_ORDER_TEXT}' 
    Click Element    ${REVIEW_ORDER_SHIPPING_EDIT_BUTTON}
    ELSE
    Wait Until Page Contains    ${SHIPPING_INFORMATION_TEXT}
        
    END
    #--------------------------------------------- Shipping Page ---------------------------------------------------
    #Get Default shipping address
    ${REGISTER_SHIPPING_DEFAULT}=    Get Text    ${SHIPPING_GET_REGISTER_SHIPPING_DEFAULT}
    Log To Console    Shipping information/Name-Lastname: ${REGISTER_SHIPPING_DEFAULT}
    #Click on Add New Address
    Sleep    2s
    Click Element    ${SHIPPING_SHIPPING_SECTION_ADD_NEW_ADDRESS_BUTTON}
    #Verify Add New Address Popup
    Sleep    1s
    Wait Until Page Contains Element    ${SHIPPING_SHIPPING_SECTION_ADD_NEW_ADDRESS_POPUP}
    #Input Firstname
    Input Text    ${SHIPPING_SHIPPING_SECTION_ADD_NEW_ADDRESS_FIRST_NAME_FIELD}    ${ADD_NEW_ADDRESS_FIRST_NAME_TEXT}
    #Input Lastname
    Input Text    ${SHIPPING_SHIPPING_SECTION_ADD_NEW_ADDRESS_LAST_NAME_FIELD}    ${ADD_NEW_ADDRESS_LAST_NAME_TEXT}
    #Input Country Thailand
    Click Element    ${SHIPPING_SHIPPING_SECTION_ADD_NEW_ADDRESS_COUNTRY_THAILAND}
    #Select Provice
    Click Element    ${SHIPPING_SHIPPING_SECTION_ADD_NEW_ADDRESS_PROVICE_FIELD} 
    Click Element    ${SHIPPING_SHIPPING_SECTION_ADD_NEW_ADDRESS_PROVICE_BANGKOK} 
    #Select District
    Click Element    ${SHIPPING_SHIPPING_SECTION_ADD_NEW_ADDRESS_DISTRICT_BANGKAPI}
    #Select Subdistrict
    Click Element    ${SHIPPING_SHIPPING_SECTION_ADD_NEW_ADDRESS_SUB_DISTRICT_HUAMAK}
    #Input House number
    Input Text    ${SHIPPING_SHIPPING_SECTION_ADD_NEW_HOUSE_NUMBER_FIELD}     ${SHIPPING_ADD_NEW_HOUSENUMBER}
    #Input Buiding
    Input Text    ${SHIPPING_SHIPPING_SECTION_ADD_NEW_BUIDING_FIELD}    ${SHIPPING_ADD_NEW_BUILDING}
    #Input Floor
    Input Text    ${SHIPPING_SHIPPING_SECTION_ADD_NEW_FLOOR_FIELD}    ${SHIPPING_ADD_NEW_FLOOR}
    #Input Alley/Road
    Input Text    ${SHIPPING_SHIPPING_SECTION_ADD_NEW_ALLEY/ROAD_FIELD}    ${SHIPPING_ADD_NEW_ROAD}
    #Input Phone Number
    Input Text    ${SHIPPING_SHIPPING_SECTION_ADD_NEW_PHONE_NUMBER_FIELD}    ${SHIPPING_ADD_NEW_PHONENUMBER}
    #Click Save address
    Sleep    2s
    Click Element    ${SHIPPING_SHIPPING_SECTION_ADD_NEW_SAVE_ADDRESS_BUTTON}
    Click Element    ${SHIPPING_SHIPPING_SECTION_ADD_NEW_SAVE_ADDRESS_BUTTON}
    Wait Until Element Is Not Visible    ${SHIPPING_SHIPPING_SECTION_ADD_NEW_ADDRESS_POPUP}
    #Get New Default shipping address
    ${NEW_REGISTER_SHIPPING_DEFAULT}=    Get Text    ${SHIPPING_GET_REGISTER_SHIPPING_DEFAULT}
    Log To Console    New Shipping information/Name-Lastname: ${NEW_REGISTER_SHIPPING_DEFAULT}
    #Click Proceed to payment
    Sleep    1s
    Click Element    ${SHIPPING_PROCEED_TO_PAYMENT_BUTTON}
    #-------------------------- Payment Page ---------------------------------------------
    Wait Until Page Contains    ${PAYMENT_SELECT_PAYMENT_METHOD_TEXT}
    #Select payment method
    Sleep    2s
    Click Element    ${PAYMENT_METHOD_COD}
    Sleep    2s
    #Click Proceed to Review Order button
    Click Element    ${PAYMENT_PROCEED_TO_REVIEW_BUTTON}
    #-------------------------- Review Order Page ---------------------------------------------
    Wait Until Page Contains    ${REVIEW_ORDER_TEXT}
    Wait Until Element Contains    ${REVIEW_ORDER_SHIPPING_SECTION}    ${REVIEW_ORDER_SHIPPING_TEXT}
    Wait Until Element Contains    ${REVIEW_ORDER_PAYMENT_SECTION}    ${REVIEW_ORDER_PAYMENT_TEXT}
    Wait Until Element Contains    ${REVIEW_ORDER_ITEM_LIST_SECTION}    ${REVIEW_ORDER_ITEM_LIST_TEXT}
    #Click Place Order button
    Click Element    ${REVIEW_ORDER_PLACE_ORDER}
    Sleep    5s
    #-------------------------- Thank you Page -------------------------------------------------
    Wait Until Element Contains    ${THANKYOU_SHIPPING_SECTION}    ${THANKYOU_SHIPPING_TEXT}
    Wait Until Element Contains    ${THANKYOU_PAYMENT_SECTION}    ${THANKYOU_PAYMENT_TEXT}
    Wait Until Element Contains    ${THANKYOU_ITEM_LIST_SECTION}    ${THANKYOU_ITEM_LIST_TEXT}
    ${REGISTER_ORDER_NUMBER}=    Get Text    ${THANKYOU_GET_REGISTER_ORDER_NUMBER}
    Log To Console    Order Number is ${REGISTER_ORDER_NUMBER}   
    Sleep    3s
    Logout
    Delete All Cookies
    Close Browser

Checkout_TC_4: To Verify registered customer able to add multiple shipping address in Shipping Details Tab during the checkout process
    [Documentation]    Select address by select from address book
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL_EXISTING_CUSTOMER}      ${LOGIN_PASSWORD_EXISTING_CUSTOMER}
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
    Wait Until Element Contains   ${PDP_ADD_TO_CART_SUCCESS_POPUP}    ${SUCCESS_TEXT}
    #Click on OK button
    Click Element    ${PDP_ADD_TO_CART_SUCCESS_POPUP_OK_BUTTON}
    #Get minicart count
    ${MINICART_COUNT}=    Get Text    ${MINI_CART_COUNTER_LABEL}
    Log To Console    Get count on minicart icon = ${MINICART_COUNT}
    #Click minicart icon
    Sleep    1s
    Click Element    ${MINI_CART_ICON}
    #Verify the Checkout button on Mini cart
    Wait Until Element Contains    ${MINI_CART_CHECKOUT_BUTTON}    ${MINI_CART_CHECKOUT_BUTTON_TEXT}
    #Click on Checkout button on Mini Cart
    Click Element    ${MINI_CART_CHECKOUT_BUTTON}
    Sleep    8s
    ${LANDING_PAGE}=    Run Keyword And Return Status    Wait Until Page Contains    ${REVIEW_ORDER_TEXT}
    Sleep    3s
    IF    '${LANDING_PAGE}'=='${REVIEW_ORDER_TEXT}' 
        Click Element    ${REVIEW_ORDER_SHIPPING_EDIT_BUTTON}
    ELSE
    Wait Until Page Contains    ${SHIPPING_INFORMATION_TEXT}
        
    END
    #--------------------------------------------- Shipping Page ---------------------------------------------------
    #Get Default shipping address
    ${REGISTER_SHIPPING_DEFAULT}=    Get Text    ${SHIPPING_GET_REGISTER_SHIPPING_DEFAULT}
    Log To Console    Shipping information/Name-Lastname: ${REGISTER_SHIPPING_DEFAULT}
    #Click on Select from Address Book button
    Click Element    ${SHIPPING_SHIPPING_SECTION_SELECT_FROM_ADDRESS_BOOK_BUTTON}
    #Verify Please Select Address Popup
    Sleep    2s
    Wait Until Page Contains Element    ${SHIPPING_SHIPPING_SECTION_SELECT_FROM_ADDRESS_BOOK_POPUP} 
    #Select Address from Select from Address Book button (Select First item)
    Click Element    ${SHIPPING_SHIPPING_SECTION_SELECT_FROM_ADDRESS_BOOK_FIRST_ITEM} 
    Wait Until Element Is Not Visible    ${SHIPPING_SHIPPING_SECTION_SELECT_FROM_ADDRESS_BOOK_POPUP} 
    #Get New Default shipping address
    ${NEW_REGISTER_SHIPPING_DEFAULT}=    Get Text    ${SHIPPING_GET_REGISTER_SHIPPING_DEFAULT}
    Log To Console    New Shipping information/Name-Lastname: ${NEW_REGISTER_SHIPPING_DEFAULT}
    #Click Proceed to payment
    Sleep    2s
    Click Element    ${SHIPPING_PROCEED_TO_PAYMENT_BUTTON}
    Sleep    2s
    #-------------------------- Payment Page ---------------------------------------------
    Wait Until Page Contains    ${PAYMENT_SELECT_PAYMENT_METHOD_TEXT}
    #Select payment method
    Sleep    2s
    Click Element    ${PAYMENT_METHOD_COD}
    Sleep    2s
    #Click Proceed to Review Order button
    Click Element    ${PAYMENT_PROCEED_TO_REVIEW_BUTTON}
    #-------------------------- Review Order Page ---------------------------------------------
    Wait Until Page Contains    ${REVIEW_ORDER_TEXT}
    Wait Until Element Contains    ${REVIEW_ORDER_SHIPPING_SECTION}    ${REVIEW_ORDER_SHIPPING_TEXT}
    Wait Until Element Contains    ${REVIEW_ORDER_PAYMENT_SECTION}    ${REVIEW_ORDER_PAYMENT_TEXT}
    Wait Until Element Contains    ${REVIEW_ORDER_ITEM_LIST_SECTION}    ${REVIEW_ORDER_ITEM_LIST_TEXT}
    #Click Place Order button
    Click Element    ${REVIEW_ORDER_PLACE_ORDER}
    Sleep    5s
    #-------------------------- Thank you Page -------------------------------------------------
    Wait Until Element Contains    ${THANKYOU_SHIPPING_SECTION}    ${THANKYOU_SHIPPING_TEXT}
    Wait Until Element Contains    ${THANKYOU_PAYMENT_SECTION}    ${THANKYOU_PAYMENT_TEXT}
    Wait Until Element Contains    ${THANKYOU_ITEM_LIST_SECTION}    ${THANKYOU_ITEM_LIST_TEXT}
    ${REGISTER_ORDER_NUMBER}=    Get Text    ${THANKYOU_GET_REGISTER_ORDER_NUMBER}
    Log To Console    Order Number is ${REGISTER_ORDER_NUMBER}   
    Sleep    3s
    Logout
    Delete All Cookies
    Close Browser

Checkout_TC_5: To verify registered customer view the Shipping Details and Payment & review tabs during the checkout process
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL_EXISTING_CUSTOMER}      ${LOGIN_PASSWORD_EXISTING_CUSTOMER}
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
    Wait Until Element Contains   ${PDP_ADD_TO_CART_SUCCESS_POPUP}    ${SUCCESS_TEXT}
    #Click on OK button
    Click Element    ${PDP_ADD_TO_CART_SUCCESS_POPUP_OK_BUTTON}
    #Get minicart count
    ${MINICART_COUNT}=    Get Text    ${MINI_CART_COUNTER_LABEL}
    Log To Console    Get count on minicart icon = ${MINICART_COUNT}
    #Click minicart icon
    Sleep    1s
    Click Element    ${MINI_CART_ICON}
    #Verify the Checkout button on Mini cart
    Wait Until Element Contains    ${MINI_CART_CHECKOUT_BUTTON}    ${MINI_CART_CHECKOUT_BUTTON_TEXT}
    #Click on Checkout button on Mini Cart
    Click Element    ${MINI_CART_CHECKOUT_BUTTON}
    Sleep    8s
     ${LANDING_PAGE}=    Run Keyword And Return Status    Wait Until Page Contains    ${REVIEW_ORDER_TEXT}
    Execute Javascript    window.scrollTo(0, 0)
    Sleep    3s
    IF    '${LANDING_PAGE}'=='${REVIEW_ORDER_TEXT}' 
        Click Element    ${REVIEW_ORDER_SHIPPING_EDIT_BUTTON}
    ELSE
    Wait Until Page Contains    ${SHIPPING_INFORMATION_TEXT}
        
    END
    #--------------------------------------------- Shipping Page ---------------------------------------------------
    #Get Default shipping address
    ${REGISTER_SHIPPING_DEFAULT}=    Get Text    ${SHIPPING_GET_REGISTER_SHIPPING_DEFAULT}
    Log To Console    Shipping information/Name-Lastname: ${REGISTER_SHIPPING_DEFAULT}
    #Verify the Order Information title on Checkout page
    Wait Until Element Contains    ${SHIPPING_ORDER_INFORMATION_SECTION}    ${SHIPPING_ORDER_INFORMATION_SECTION_TEXT}
    #Verify the number of item Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_COUNT_ITEM}=    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_X_ITEM}
    Log To Console    ${SHIPPING_ORDER_INFORMATION_SECTION_COUNT_ITEM}
    #the Subtotal on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL}=    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL_VALUE}
    Log To Console    Subtotal is ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL}
    #Verify the Shipping Fee on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE_VALUE}
    Log To Console    Shipping Fee is ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE} 
    #Verify the Total Price on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL_VALUE}
    Log To Console    Total is ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL}
    #Verify the item list title on Checkout page
    Sleep    2s
    Wait Until Element Contains    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_SECCTION}    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_SECCTION_TEXT}
    Click Element    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_SECCTION}
     #Verify item name
    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_NAME}    Get Text   ${SHIPPING_ORDER_INFORMATION_SECTION_GET_ITEM_NAME}
    Log To Console    Item name is ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_NAME}  
    #Verify item original price
    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_ORIGINAL_PRICE}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_GET_ORIGINAL_PRICE}
    Log To Console    Original price is ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_ORIGINAL_PRICE} 
    #Verify item new price
    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_NEW_PRICE}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_GET_NEW_PRICE}
    Log To Console    New price is ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_NEW_PRICE}        
    #Verify item color
    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_COLOR}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_GET_COLOR}
    Log To Console    Item color is ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_COLOR}    
    #Verify item size
    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_SIZE}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_GET_SIZE}
    Log To Console    Item size is ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_SIZE}  
    #Verify item qty
    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_QTY}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_GET_QTY}
    Log To Console    item qty is ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_ITEM_QTY}
    #Verify Proceed to payment button
    Wait Until Page Contains Element   ${SHIPPING_PROCEED_TO_PAYMENT_BUTTON}
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
    Wait Until Element Contains   ${PDP_ADD_TO_CART_SUCCESS_POPUP}    ${SUCCESS_TEXT}
    #Click on OK button
    Click Element    ${PDP_ADD_TO_CART_SUCCESS_POPUP_OK_BUTTON}
    #Get minicart count
    ${MINICART_COUNT}=    Get Text    ${MINI_CART_COUNTER_LABEL}
    Log To Console    Get count on minicart icon = ${MINICART_COUNT}
    #Click minicart icon
    Sleep    1s
    Click Element    ${MINI_CART_ICON}
    #Verify the Checkout button on Mini cart
    Wait Until Element Contains    ${MINI_CART_CHECKOUT_BUTTON}    ${MINI_CART_CHECKOUT_BUTTON_TEXT}
    #Click on Checkout button on Mini Cart
    Click Element    ${MINI_CART_CHECKOUT_BUTTON}
    #--------------------------------------------- Shipping Page ---------------------------------------------------
    #Verify shipping page
    Wait Until Page Contains    ${SHIPPING_INFORMATION_TEXT}
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
    Wait Until Page Contains    ${SHIPPING_INFORMATION_TEXT}
    Execute Javascript    window.scrollTo(0, 0)
    Sleep    2s
    Click Element    ${WEB_LOGO_MM}
    Sleep    5s
    Wait until page contains Element    ${LOGIN_ICON}
    Click Element    ${LOGIN_ICON}
    Wait Until Page Contains Element    ${LOGIN_HI}
    Click Element    ${LOGIN_ICON}
    Logout
    Delete All Cookies
    Close Browser

Checkout_TC_7: To verify registered customer able to select choose shipping method options in shipping details tab during the checkout process.
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL_EXISTING_CUSTOMER}      ${LOGIN_PASSWORD_EXISTING_CUSTOMER}
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
    Sleep    2s
    Wait Until Element Contains   ${PDP_ADD_TO_CART_SUCCESS_POPUP}    ${SUCCESS_TEXT}
    #Click on OK button
    Click Element    ${PDP_ADD_TO_CART_SUCCESS_POPUP_OK_BUTTON}
    #Get minicart count
    ${MINICART_COUNT}=    Get Text    ${MINI_CART_COUNTER_LABEL}
    Log To Console    Get count on minicart icon = ${MINICART_COUNT}
    #Click minicart icon
    Sleep    1s
    Click Element    ${MINI_CART_ICON}
    #Verify the Checkout button on Mini cart
    Wait Until Element Contains    ${MINI_CART_CHECKOUT_BUTTON}    ${MINI_CART_CHECKOUT_BUTTON_TEXT}
    #Click on Checkout button on Mini Cart
    Click Element    ${MINI_CART_CHECKOUT_BUTTON}
    Sleep    8s
    ${LANDING_PAGE}=    Run Keyword And Return Status    Page Should Contain    ${REVIEW_ORDER_TEXT}
    Sleep    3s
    IF    '${LANDING_PAGE}'=='${REVIEW_ORDER_TEXT}' 
        Click Element    ${REVIEW_ORDER_SHIPPING_EDIT_BUTTON}
    ELSE
    Wait Until Page Contains    ${SHIPPING_INFORMATION_TEXT}
        
    END
    #--------------------------------------------- Shipping Page ---------------------------------------------------
    #Get Default shipping address
    Sleep    2s
    ${REGISTER_SHIPPING_DEFAULT}=    Get Text    ${SHIPPING_GET_REGISTER_SHIPPING_DEFAULT}
    Log To Console    Shipping information/Name-Lastname: ${REGISTER_SHIPPING_DEFAULT}
    #Verify the Order Information title on Checkout page
    Wait Until Element Contains    ${SHIPPING_ORDER_INFORMATION_SECTION}    ${SHIPPING_ORDER_INFORMATION_SECTION_TEXT}
    #Verify the number of item Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_COUNT_ITEM}=    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_X_ITEM}
    Log To Console    ${SHIPPING_ORDER_INFORMATION_SECTION_COUNT_ITEM}
    #the Subtotal on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL}=    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL_VALUE}
    Log To Console    Subtotal is ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL}
    #Verify the Shipping Fee on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE_VALUE}
    Log To Console    Shipping Fee is ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE} 
    #Verify the Total Price on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL_VALUE}
    Log To Console    Total is ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL}
    #Verify the item list title on Checkout page
    Wait Until Element Contains    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_SECCTION}    ${SHIPPING_ORDER_INFORMATION_SECTION_ITEM_LIST_SECCTION_TEXT}
    #Verify Choose Shipping Method
    Wait Until Page Contains    ${SHIPPING_SHIPPING_METHOD}
    Click Element    ${SHIPPING_SHIPPING_METHOD_NEXT_DAY} 
    #Verify the Order Information title on Checkout page
    Wait Until Element Contains    ${SHIPPING_ORDER_INFORMATION_SECTION}    ${SHIPPING_ORDER_INFORMATION_SECTION_TEXT}
    #Verify the number of item Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_COUNT_ITEM}=    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_X_ITEM}
    Log To Console    ${SHIPPING_ORDER_INFORMATION_SECTION_COUNT_ITEM}
    #the Subtotal on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL}=    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL_VALUE}
    Log To Console    Subtotal is ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL}
    #Verify the Shipping Fee on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE_VALUE}
    Log To Console    Shipping Fee is ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE} 
    #Verify the Total Price on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL_VALUE}
    Log To Console    Total is ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL}
    #Click Proceed to payment
    Sleep    3s
    Click Element    ${SHIPPING_PROCEED_TO_PAYMENT_BUTTON}
    Sleep    2s
    #-------------------------- Payment Page ---------------------------------------------
    Wait Until Page Contains    ${PAYMENT_SELECT_PAYMENT_METHOD_TEXT}
    #Select payment method
    Sleep    2s
    Click Element    ${PAYMENT_METHOD_COD}
    Sleep    2s
    #Click Proceed to Review Order button
    Click Element    ${PAYMENT_PROCEED_TO_REVIEW_BUTTON}
    #-------------------------- Review Order Page ---------------------------------------------
    Wait Until Page Contains    ${REVIEW_ORDER_TEXT}
    Wait Until Element Contains    ${REVIEW_ORDER_SHIPPING_SECTION}    ${REVIEW_ORDER_SHIPPING_TEXT}
    Wait Until Element Contains    ${REVIEW_ORDER_PAYMENT_SECTION}    ${REVIEW_ORDER_PAYMENT_TEXT}
    Wait Until Element Contains    ${REVIEW_ORDER_ITEM_LIST_SECTION}    ${REVIEW_ORDER_ITEM_LIST_TEXT}
    #Click Place Order button
    Click Element    ${REVIEW_ORDER_PLACE_ORDER}
    Sleep    5s
    #-------------------------- Thank you Page -------------------------------------------------
    Wait Until Element Contains    ${THANKYOU_SHIPPING_SECTION}    ${THANKYOU_SHIPPING_TEXT}
    Wait Until Element Contains    ${THANKYOU_PAYMENT_SECTION}    ${THANKYOU_PAYMENT_TEXT}
    Wait Until Element Contains    ${THANKYOU_ITEM_LIST_SECTION}    ${THANKYOU_ITEM_LIST_TEXT}
    ${REGISTER_ORDER_NUMBER}=    Get Text    ${THANKYOU_GET_REGISTER_ORDER_NUMBER}
    Log To Console    Order Number is ${REGISTER_ORDER_NUMBER}   
    Sleep    3s
    Logout
    Delete All Cookies
    Close Browser










