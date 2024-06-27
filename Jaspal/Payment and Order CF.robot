*** Settings ***
Library    SeleniumLibrary
Resource   keywords.robot
Resource    variables_locator.robot
Resource    variables_text.robot

*** Test Cases *** 
Payment and Order CF_TC_1: To Verify registered customer enter only Visa, Master Card and JCB details in Payment and Review tab
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL_EXISTING_CUSTOMER}      ${LOGIN_PASSWORD_EXISTING_CUSTOMER}
    Sleep    5s
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
    Execute Javascript    window.scrollTo(0,3200)
    Sleep    4s
    Click Element    ${PDP_ADD_TO_CART_BUTTON}
    #Check success message
    Sleep    3s
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
    #Click Proceed to payment
    Click Element    ${SHIPPING_PROCEED_TO_PAYMENT_BUTTON}
    Sleep    3s
    #-------------------------- Payment Page ---------------------------------------------
    Wait Until Page Contains    ${PAYMENT_SELECT_PAYMENT_METHOD_TEXT}
    #Select payment method
    Sleep    2s
    Click Element    ${PAYMENT_METHOD_CC}
    Sleep    2s
    #Input Cardholder Name
    Input Text    ${CARDHOLDER_NAME_FIELD}    ${CARDHOLDER_NAME}
    #Input Card Number
    Input Text    ${CARD_NUMBER_FIELD}    ${CARD_NUMBER}
    #Select Expiration month
    Select From List By Value    ${EXPIRATION_MONTH_FIELD}    ${EXPIRATION_MONTH}
    #Select Expiration year
    Select From List By Value    ${EXPIRATION_YEAR_FIELD}    ${EXPIRATION_YEAR}
    #Input CVV
    Input Text    ${CVV_FIELD}    ${CVV}
    #Click Proceed to Review Order button
    Sleep    4s
    Click Element    ${PAYMENT_PROCEED_TO_REVIEW_BUTTON}
    Sleep    3s
    #-------------------------- Review Order Page ---------------------------------------------
    Wait Until Page Contains    ${REVIEW_ORDER_TEXT}
    Execute Javascript    window.scrollTo(0,400)
    Wait Until Element Contains    ${REVIEW_ORDER_PAYMENT_SECTION}    ${REVIEW_ORDER_PAYMENT_TEXT}
    Sleep    3s
    Click Element    ${WEB_LOGO}
    Delete item from mini cart
    Logout
    Delete All Cookies
    Close Browser

Payment and Order CF_TC_2: To verify registered customer able to place an order by selecting Secure Payment by Credit payment option
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
    Execute Javascript    window.scrollTo(0,3200)
    Sleep    4s
    Click Element    ${PDP_ADD_TO_CART_BUTTON}
    #Check success message
    Sleep    3s
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
    #Click Proceed to payment
    Click Element    ${SHIPPING_PROCEED_TO_PAYMENT_BUTTON}
    Sleep    3s
    #-------------------------- Payment Page ---------------------------------------------
    Wait Until Page Contains    ${PAYMENT_SELECT_PAYMENT_METHOD_TEXT}
    #Select payment method
    Sleep    2s
    Click Element    ${PAYMENT_METHOD_CC}
    Sleep    2s
    #Input Cardholder Name
    Input Text    ${CARDHOLDER_NAME_FIELD}    ${CARDHOLDER_NAME}
    #Input Card Number
    Input Text    ${CARD_NUMBER_FIELD}    ${CARD_NUMBER}
    #Select Expiration month
    Select From List By Value    ${EXPIRATION_MONTH_FIELD}    ${EXPIRATION_MONTH}
    #Select Expiration year
    Select From List By Value    ${EXPIRATION_YEAR_FIELD}    ${EXPIRATION_YEAR}
    #Input CVV
    Input Text    ${CVV_FIELD}    ${CVV}
    #Click Proceed to Review Order button
    Sleep    4s
    Click Element    ${PAYMENT_PROCEED_TO_REVIEW_BUTTON}
    Sleep    3s
    #-------------------------- Review Order Page ---------------------------------------------
    Wait Until Page Contains    ${REVIEW_ORDER_TEXT}
    Execute Javascript    window.scrollTo(0,400)
    Wait Until Element Contains    ${REVIEW_ORDER_PAYMENT_SECTION}    ${REVIEW_ORDER_PAYMENT_TEXT}
    Sleep    3s
    #Click Place Order button
    Click Element    ${REVIEW_ORDER_PLACE_ORDER}
    Sleep    8s
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

Payment and Order CF_TC_3: To verify registered customer see the errors in payment and review details page if details are mismatch/wrong
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
    Execute Javascript    window.scrollTo(0,3200)
    Sleep    4s
    Click Element    ${PDP_ADD_TO_CART_BUTTON}
    #Check success message
    Sleep    3s
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
    #Click Proceed to payment
    Click Element    ${SHIPPING_PROCEED_TO_PAYMENT_BUTTON}
    Sleep    3s
    #-------------------------- Payment Page ---------------------------------------------
    Wait Until Page Contains    ${PAYMENT_SELECT_PAYMENT_METHOD_TEXT}
    #Select payment method
    Sleep    2s
    Click Element    ${PAYMENT_METHOD_CC}
    Sleep    2s
    #Input Cardholder Name
    Input Text    ${CARDHOLDER_NAME_FIELD}    ${CARDHOLDER_NAME}
    #Input Card Number
    Input Text    ${CARD_NUMBER_FIELD}    ${CARD_NUMBER_INVALID}
    #Select Expiration month
    Select From List By Value    ${EXPIRATION_MONTH_FIELD}    ${EXPIRATION_MONTH_INVALID}
    #Select Expiration year
    Select From List By Value    ${EXPIRATION_YEAR_FIELD}    ${EXPIRATION_YEAR_INVALID}
    #Input CVV
    Input Text    ${CVV_FIELD}    ${CVV_INVALID}
    #Click Proceed to Review Order button
    Sleep    2s
    Click Element    ${PAYMENT_PROCEED_TO_REVIEW_BUTTON}
    Sleep    3s
    Wait Until Element Contains    ${CARD_NUMBER_ERROR}    ${CARD_NUMBER_ERROR_MESSEGE}
    Sleep    3s
    Click Element    ${WEB_LOGO_MM}
    Sleep    3s
    Delete item from mini cart
    Logout
    Delete All Cookies
    Close Browser

Payment and Order CF_TC_4: To verify registered customer able to place an order by selecting Cash on Delivery payment option
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
    Execute Javascript    window.scrollTo(0,3200)
    Sleep    4s
    Click Element    ${PDP_ADD_TO_CART_BUTTON}
    #Check success message
    Sleep    3s
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
    Sleep    4s
    Click Element    ${PAYMENT_PROCEED_TO_REVIEW_BUTTON}
    Sleep    3s
    #-------------------------- Review Order Page ---------------------------------------------
    Wait Until Page Contains    ${REVIEW_ORDER_TEXT}
    Execute Javascript    window.scrollTo(0,400)
    Wait Until Element Contains    ${REVIEW_ORDER_PAYMENT_SECTION}    ${REVIEW_ORDER_PAYMENT_TEXT}
    Sleep    3s
    #Click Place Order button
    Click Element    ${REVIEW_ORDER_PLACE_ORDER}
    Sleep    8s
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

Payment and Order CF_TC_5: To verify registered customer able to place an order by selecting Prompt payment option
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
    Execute Javascript    window.scrollTo(0,3200)
    Sleep    4s
    Click Element    ${PDP_ADD_TO_CART_BUTTON}
    #Check success message
    Sleep    3s
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
    #Click Proceed to payment
    Click Element    ${SHIPPING_PROCEED_TO_PAYMENT_BUTTON}
    Sleep    3s
    #-------------------------- Payment Page ---------------------------------------------
    Wait Until Page Contains    ${PAYMENT_SELECT_PAYMENT_METHOD_TEXT}
    #Select payment method
    Sleep    5s
    Click Element    ${PAYMENT_METHOD_PP}
    Sleep    2s
    #Click Proceed to Review Order button
    Sleep    4s
    Click Element    ${PAYMENT_PROCEED_TO_REVIEW_BUTTON}
    Sleep    3s
    #-------------------------- Review Order Page ---------------------------------------------
    Wait Until Page Contains    ${REVIEW_ORDER_TEXT}
    Execute Javascript    window.scrollTo(0,400)
    Wait Until Element Contains    ${REVIEW_ORDER_PAYMENT_SECTION}    ${REVIEW_ORDER_PAYMENT_TEXT}
    Sleep    3s
    #Click Place Order button
    Click Element    ${REVIEW_ORDER_PLACE_ORDER}
    Sleep    8s
    #-------------------------- PromptPay Page -------------------------------------------------
    #Verify PromptPay Page
    Wait Until Page Contains    ${PROMPTPAY_PAY_WITH_PROMPTPAY}
    #Verify order number
    Wait Until Page Contains    ${PROMPTPAY_ORDER_NUMBER}
    #Verify Save QR button
    Wait Until Page Contains Element    ${PROMPTPAY_SAVE_QR_BUTTON}
    #Verify Edit Payment button
    Wait Until Page Contains Element    ${PROMPTPAY_EDIT_PAYMENT_BUTTON}    
    Sleep    5s
    Logout
    Delete All Cookies
    Close Browser

Payment and Order CF_TC_6: To verfiy registered Customer must see new QR payment page pop up
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
    Execute Javascript    window.scrollTo(0,3200)
    Sleep    4s
    Click Element    ${PDP_ADD_TO_CART_BUTTON}
    #Check success message
    Sleep    3s
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
    #Click Proceed to payment
    Click Element    ${SHIPPING_PROCEED_TO_PAYMENT_BUTTON}
    Sleep    3s
    #-------------------------- Payment Page ---------------------------------------------
    Wait Until Page Contains    ${PAYMENT_SELECT_PAYMENT_METHOD_TEXT}
    #Select payment method
    Sleep    5s
    Click Element    ${PAYMENT_METHOD_PP}
    Sleep    2s
    #Click Proceed to Review Order button
    Sleep    4s
    Click Element    ${PAYMENT_PROCEED_TO_REVIEW_BUTTON}
    Sleep    3s
    #-------------------------- Review Order Page ---------------------------------------------
    Wait Until Page Contains    ${REVIEW_ORDER_TEXT}
    Execute Javascript    window.scrollTo(0,400)
    Wait Until Element Contains    ${REVIEW_ORDER_PAYMENT_SECTION}    ${REVIEW_ORDER_PAYMENT_TEXT}
    Sleep    3s
    #Click Place Order button
    Click Element    ${REVIEW_ORDER_PLACE_ORDER}
    Sleep    8s
    #-------------------------- PromptPay Page -------------------------------------------------
    #Verify PromptPay Page Headding
    Wait Until Page Contains    ${PROMPTPAY_PAY_WITH_PROMPTPAY}
    #Verify timer
    Wait Until Page Contains    ${PROMPTPAY_TIMER} 
    #Verify order number
    Wait Until Page Contains    ${PROMPTPAY_ORDER_NUMBER}
    #Get order number value
    ${PROMPTPAY_ORDER_NUMBER}    Get Text    ${PROMPTPAY_ORDER_NUMBER_TEXT}
    Log To Console    Order Number ${PROMPTPAY_ORDER_NUMBER}
    #Verify QR Code img
    Wait Until Page Contains Element    ${PROMPTPAY_QR_CODE_IMG}
    #Verify Mer Name
    Wait Until Element Contains    ${PROMPTPAY_MER_NAME}    ${PROMPTPAY_MER_NAME_TEXT}
    #Verify PP Price
    ${PROMPTPAY_PRICE}    Get Text    ${PROMPTPAY_PRICE_TEXT}
    Log To Console    Order Number ${PROMPTPAY_PRICE}
    #Verify Save QR button
    Wait Until Page Contains Element    ${PROMPTPAY_SAVE_QR_BUTTON}
    #Verify Edit Payment button
    Wait Until Page Contains Element    ${PROMPTPAY_EDIT_PAYMENT_BUTTON}
    #Verify How to pay
    Wait Until Element Contains    ${PROMPTPAY_HOW_TO_PAY}    ${PROMPTPAY_HOW_TO_PAY_TEXT}
    Sleep    5s
    Logout
    Delete All Cookies
    Close Browser

Payment and Order CF_TC_7: To verfiy Guest Customer must see thank you page
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
    Execute Javascript    window.scrollTo(0,3200)
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
    Execute Javascript    window.scrollTo(0,0)
    Wait Until Page Contains    ${SHIPPING_INFORMATION_TEXT}
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
    Sleep    3s
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
    Sleep    2s
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
    #Verify SHIPPING_SECTION
    Wait Until Element Contains    ${THANKYOU_SHIPPING_SECTION}    ${THANKYOU_SHIPPING_TEXT}
    #Verify PAYMENT_SECTION
    Wait Until Element Contains    ${THANKYOU_PAYMENT_SECTION}    ${THANKYOU_PAYMENT_TEXT}
    #Verify ITEM_LIST_SECTION
    Wait Until Element Contains    ${THANKYOU_ITEM_LIST_SECTION}    ${THANKYOU_ITEM_LIST_TEXT}
    #Verify ORDER_NUMBER
    ${GUEST_ORDER_NUMBER}=    Get Text    ${THANKYOU_GET_GUEST_ORDER_NUMBER}
    Log To Console    Order Number is ${GUEST_ORDER_NUMBER}
    #Verify Sub total
    ${THANKYOU_SUB_TOTAL}=    Get Text    ${THANKYOU_SUB_TOTAL_TEXT}
    Log To Console    Sub total is ${THANKYOU_SUB_TOTAL}
    #Verify Shipping Fee
    ${THANKYOU_SHIPPING_FEE}=    Get Text    ${THANKYOU_SHIPPING_FEE_TEXT}
    Log To Console    Shipping Fee is ${THANKYOU_SHIPPING_FEE}
    #Verify COD Charges
    ${THANKYOU_COD_CHARGES}=    Get Text    ${THANKYOU_COD_CHARGES_TEXT}
    Log To Console    COD Charges is ${THANKYOU_COD_CHARGES}
    #Verify Total
    ${THANKYOU_TOTAL}=    Get Text    ${THANKYOU_TOTAL_TEXT}
    Log To Console    Total is ${THANKYOU_COD_CHARGES}
    Sleep    3s

Payment and Order CF_TC_8: To verfiy registerd customer is able to see checkout page
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL_EXISTING_CUSTOMER}      ${LOGIN_PASSWORD_EXISTING_CUSTOMER}
    Wait Until Element Is Not Visible    ${LOGIN_POPUP}
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
    Execute Javascript    window.scrollTo(0,3200)
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
    Execute Javascript    window.scrollTo(0,0)
    #--------------------------------------------- Shipping Page ---------------------------------------------------
    #Verify the Order Information title on Checkout page
    Wait Until Element Contains    ${SHIPPING_ORDER_INFORMATION_SECTION}    ${SHIPPING_ORDER_INFORMATION_SECTION_TEXT}
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
    Sleep    2s
    #Verify SHIPPING_SECTION
    Wait Until Element Contains    ${THANKYOU_SHIPPING_SECTION}    ${THANKYOU_SHIPPING_TEXT}
    #Verify PAYMENT_SECTION
    Wait Until Element Contains    ${THANKYOU_PAYMENT_SECTION}    ${THANKYOU_PAYMENT_TEXT}
    #Verify ITEM_LIST_SECTION
    Wait Until Element Contains    ${THANKYOU_ITEM_LIST_SECTION}    ${THANKYOU_ITEM_LIST_TEXT}
    #Verify ORDER_NUMBER
    ${GUEST_ORDER_NUMBER}=    Get Text    ${THANKYOU_GET_REGISTER_ORDER_NUMBER}
    Log To Console    Order Number is ${GUEST_ORDER_NUMBER}
    #Verify Sub total
    ${THANKYOU_SUB_TOTAL}=    Get Text    ${THANKYOU_SUB_TOTAL_TEXT}
    Log To Console    Sub total is ${THANKYOU_SUB_TOTAL}
    #Verify Shipping Fee
    ${THANKYOU_SHIPPING_FEE}=    Get Text    ${THANKYOU_SHIPPING_FEE_TEXT}
    Log To Console    Shipping Fee is ${THANKYOU_SHIPPING_FEE}
    #Verify COD Charges
    ${THANKYOU_COD_CHARGES}=    Get Text    ${THANKYOU_COD_CHARGES_TEXT}
    Log To Console    COD Charges is ${THANKYOU_COD_CHARGES}
    #Verify Total
    ${THANKYOU_TOTAL}=    Get Text    ${THANKYOU_TOTAL_TEXT}
    Log To Console    Total is ${THANKYOU_COD_CHARGES}
    Sleep    3s

Payment and Order CF_TC_9: To verify Registered customer able to place an order with Online Credit balance during checkout process
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL_EXISTING_CUSTOMER}      ${LOGIN_PASSWORD_EXISTING_CUSTOMER}
    Wait Until Element Is Not Visible    ${LOGIN_POPUP}
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
    Execute Javascript    window.scrollTo(0,3200)
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
    Execute Javascript    window.scrollTo(0,0)
    #--------------------------------------------- Shipping Page ---------------------------------------------------
    #Verify the Order Information title on Checkout page
    Wait Until Element Contains    ${SHIPPING_ORDER_INFORMATION_SECTION}    ${SHIPPING_ORDER_INFORMATION_SECTION_TEXT}
    #Verify the Online Credit Section on Shipping page
    Wait Until Element Contains    ${SHIPPING_ONLINE_CREDIT_SECTION}    ${SHIPPING_ONLINE_CREDIT_SECTION_TEXT}  
    #Verify Check Expire Date
    Wait Until Element Contains    ${SHIPPING_ONLINE_CREDIT_SECTION}    ${SHIPPING_ONLINE_CREDIT_CHECK_EXPIRE_DATE_TEXT}
    Click Element    ${SHIPPING_ONLINE_CREDIT_CHECK_EXPIRE_DATE}
    #Verify Check Expire Date Popup
    Execute Javascript    window.scrollTo(0,900)
    Wait Until Page Contains Element    ${SHIPPING_ONLINE_CREDIT_CHECK_EXPIRE_DATE_POPUP}    5s
    Wait Until Page Contains Element    ${SHIPPING_ONLINE_CREDIT_EXPIRE_DATE_TEXT}    3s
    #Click Close popup
    Click Element    ${SHIPPING_ONLINE_CREDIT_CHECK_EXPIRE_DATE_POPUP_CLOSE_BUTTON}
    #Get available credit Value
    Wait Until Element Contains    ${SHIPPING_ONLINE_CREDIT_AVAILABLE_CREDIT}    ${SHIPPING_ONLINE_CREDIT_AVAILABLE_CREDIT_TEXT}
    ${AVAILABLE CREDIT}    Get Text    ${SHIPPING_ONLINE_CREDIT_AVAILABLE_CREDIT_VALUE}
    Log To Console    Available Credit is ${AVAILABLE CREDIT}
    Sleep    5s
    #Verify the applicable Credit
    Wait Until Page Contains Element   ${SHIPPING_ONLINE_CREDIT_APPLIED_CREDIT}
    Sleep    2s
    #Get applicable credit Value
    ${APPLIED CREDIT}    Get Text    ${SHIPPING_ONLINE_CREDIT_APPLIED_CREDIT_VALUE}
    Log To Console    Applicable Credit is ${APPLIED CREDIT}
    #Click on Use Online Credit button
    Click Button    ${SHIPPING_ONLINE_CREDIT_USE_ONLINE_CREDIT_BUTTON}
    Sleep    3s
    #Verify the Success Message of online Credit
    Wait Until Page Contains Element    ${SHIPPING_ONLINE_CREDIT_SUCCESS_POPUP}
    #Click OK Button
    Click Button    ${SHIPPING_ONLINE_CREDIT_OK_BUTTON}
    #Verify button after Use Online Credit
    Wait Until Page Contains Element    ${SHIPPING_ONLINE_CREDIT_CC_USE_ONLINE_CREDIT_BUTTON}
    #The Subtotal on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL_VALUE}
    Log To Console    Subtotal is ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL}
    #Verify the Shipping Fee on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE_VALUE}
    Log To Console    Shipping Fee is ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE}
    #Verify Total discount
    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL_DISCOUNT}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL_DISCOUNT_VALUE}
    Log To Console    Shipping Fee is ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL_DISCOUNT}
    #verify Online Credits
    ${SHIPPING_ORDER_INFORMATION_SECTION_ONLINE_CREDITS}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_ONLINE_CREDITS_VALUE}
    Log To Console    Shipping Fee is ${SHIPPING_ORDER_INFORMATION_SECTION_ONLINE_CREDITS}
    #Verify the Total Price on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL_VALUE}
    Log To Console    Total is ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL}
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
    Sleep    2s
    #Verify SHIPPING_SECTION
    Wait Until Element Contains    ${THANKYOU_SHIPPING_SECTION}    ${THANKYOU_SHIPPING_TEXT}
    #Verify PAYMENT_SECTION
    Wait Until Element Contains    ${THANKYOU_PAYMENT_SECTION}    ${THANKYOU_PAYMENT_TEXT}
    #Verify ITEM_LIST_SECTION
    Wait Until Element Contains    ${THANKYOU_ITEM_LIST_SECTION}    ${THANKYOU_ITEM_LIST_TEXT}
    #Verify ORDER_NUMBER
    ${GUEST_ORDER_NUMBER}=    Get Text    ${THANKYOU_GET_REGISTER_ORDER_NUMBER}
    Log To Console    Order Number is ${GUEST_ORDER_NUMBER}
    #Verify Sub total
    ${THANKYOU_SUB_TOTAL}=    Get Text    ${THANKYOU_SUB_TOTAL_TEXT}
    Log To Console    Sub total is ${THANKYOU_SUB_TOTAL}
    #Verify Shipping Fee
    ${THANKYOU_SHIPPING_FEE}=    Get Text    ${THANKYOU_SHIPPING_FEE_TEXT}
    Log To Console    Shipping Fee is ${THANKYOU_SHIPPING_FEE}
    #Verify COD Charges
    ${THANKYOU_COD_CHARGES}=    Get Text    ${THANKYOU_COD_CHARGES_TEXT}
    Log To Console    COD Charges is ${THANKYOU_COD_CHARGES}
    #Verify Total
    ${THANKYOU_TOTAL}=    Get Text    ${THANKYOU_TOTAL_TEXT}
    Log To Console    Total is ${THANKYOU_COD_CHARGES}
    Sleep    3s

Payment and Order CF_TC_10: To verify Registered customer able to place an order with Online Credit balance and any one of the payment option
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL_EXISTING_CUSTOMER}      ${LOGIN_PASSWORD_EXISTING_CUSTOMER}
    Wait Until Element Is Not Visible    ${LOGIN_POPUP}
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
    Execute Javascript    window.scrollTo(0,3200)
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
    Execute Javascript    window.scrollTo(0,0)
    #--------------------------------------------- Shipping Page ---------------------------------------------------
    #Verify the Order Information title on Checkout page
    Wait Until Element Contains    ${SHIPPING_ORDER_INFORMATION_SECTION}    ${SHIPPING_ORDER_INFORMATION_SECTION_TEXT}
    #Verify the Online Credit Section on Shipping page
    Wait Until Element Contains    ${SHIPPING_ONLINE_CREDIT_SECTION}    ${SHIPPING_ONLINE_CREDIT_SECTION_TEXT}  
    #Verify Check Expire Date
    Wait Until Element Contains    ${SHIPPING_ONLINE_CREDIT_SECTION}    ${SHIPPING_ONLINE_CREDIT_CHECK_EXPIRE_DATE_TEXT}
    Click Element    ${SHIPPING_ONLINE_CREDIT_CHECK_EXPIRE_DATE}
    #Verify Check Expire Date Popup
    Execute Javascript    window.scrollTo(0,900)
    Wait Until Page Contains Element    ${SHIPPING_ONLINE_CREDIT_CHECK_EXPIRE_DATE_POPUP}    5s
    Wait Until Page Contains Element    ${SHIPPING_ONLINE_CREDIT_EXPIRE_DATE_TEXT}    3s
    #Click Close popup
    Click Element    ${SHIPPING_ONLINE_CREDIT_CHECK_EXPIRE_DATE_POPUP_CLOSE_BUTTON}
    #Get available credit Value
    Wait Until Element Contains    ${SHIPPING_ONLINE_CREDIT_AVAILABLE_CREDIT}    ${SHIPPING_ONLINE_CREDIT_AVAILABLE_CREDIT_TEXT}
    ${AVAILABLE CREDIT}    Get Text    ${SHIPPING_ONLINE_CREDIT_AVAILABLE_CREDIT_VALUE}
    Log To Console    Available Credit is ${AVAILABLE CREDIT}
    Sleep    5s
    #Verify the applicable Credit
    Wait Until Page Contains Element   ${SHIPPING_ONLINE_CREDIT_APPLIED_CREDIT}
    Sleep    2s
    #Get applicable credit Value
    ${APPLIED CREDIT}    Get Text    ${SHIPPING_ONLINE_CREDIT_APPLIED_CREDIT_VALUE}
    Log To Console    Applicable Credit is ${APPLIED CREDIT}
    #Click on Use Online Credit button
    Click Button    ${SHIPPING_ONLINE_CREDIT_USE_ONLINE_CREDIT_BUTTON}
    Sleep    3s
    #Verify the Success Message of online Credit
    Wait Until Page Contains Element    ${SHIPPING_ONLINE_CREDIT_SUCCESS_POPUP}
    #Click OK Button
    Click Button    ${SHIPPING_ONLINE_CREDIT_OK_BUTTON}
    #Verify button after Use Online Credit
    Wait Until Page Contains Element    ${SHIPPING_ONLINE_CREDIT_CC_USE_ONLINE_CREDIT_BUTTON}
    #The Subtotal on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL_VALUE}
    Log To Console    Subtotal is ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL}
    #Verify the Shipping Fee on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE_VALUE}
    Log To Console    Shipping Fee is ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE}
    #Verify Total discount
    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL_DISCOUNT}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL_DISCOUNT_VALUE}
    Log To Console    Shipping Fee is ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL_DISCOUNT}
    #verify Online Credits
    ${SHIPPING_ORDER_INFORMATION_SECTION_ONLINE_CREDITS}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_ONLINE_CREDITS_VALUE}
    Log To Console    Shipping Fee is ${SHIPPING_ORDER_INFORMATION_SECTION_ONLINE_CREDITS}
    #Verify the Total Price on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL_VALUE}
    Log To Console    Total is ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL}
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
    Sleep    2s
    #Verify SHIPPING_SECTION
    Wait Until Element Contains    ${THANKYOU_SHIPPING_SECTION}    ${THANKYOU_SHIPPING_TEXT}
    #Verify PAYMENT_SECTION
    Wait Until Element Contains    ${THANKYOU_PAYMENT_SECTION}    ${THANKYOU_PAYMENT_TEXT}
    #Verify ITEM_LIST_SECTION
    Wait Until Element Contains    ${THANKYOU_ITEM_LIST_SECTION}    ${THANKYOU_ITEM_LIST_TEXT}
    #Verify ORDER_NUMBER
    ${GUEST_ORDER_NUMBER}=    Get Text    ${THANKYOU_GET_REGISTER_ORDER_NUMBER}
    Log To Console    Order Number is ${GUEST_ORDER_NUMBER}
    #Verify Sub total
    ${THANKYOU_SUB_TOTAL}=    Get Text    ${THANKYOU_SUB_TOTAL_TEXT}
    Log To Console    Sub total is ${THANKYOU_SUB_TOTAL}
    #Verify Shipping Fee
    ${THANKYOU_SHIPPING_FEE}=    Get Text    ${THANKYOU_SHIPPING_FEE_TEXT}
    Log To Console    Shipping Fee is ${THANKYOU_SHIPPING_FEE}
    #Verify COD Charges
    ${THANKYOU_COD_CHARGES}=    Get Text    ${THANKYOU_COD_CHARGES_TEXT}
    Log To Console    COD Charges is ${THANKYOU_COD_CHARGES}
    #Verify Total
    ${THANKYOU_TOTAL}=    Get Text    ${THANKYOU_TOTAL_TEXT}
    Log To Console    Total is ${THANKYOU_COD_CHARGES}
    Sleep    3s

Payment and Order CF_TC_11: To verify customer able to place an order with Online Credit balance, Promotion code and any one of the payment option
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL_EXISTING_CUSTOMER}      ${LOGIN_PASSWORD_EXISTING_CUSTOMER}
    Wait Until Element Is Not Visible    ${LOGIN_POPUP}
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
    Execute Javascript    window.scrollTo(0,3200)
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
    Execute Javascript    window.scrollTo(0,0)
    #--------------------------------------------- Shipping Page ---------------------------------------------------
    Sleep    5s
    #Verify the Order Information title on Checkout page
    Wait Until Element Contains    ${SHIPPING_ORDER_INFORMATION_SECTION}    ${SHIPPING_ORDER_INFORMATION_SECTION_TEXT}
    #Verify the Online Credit Section on Shipping page
    Wait Until Element Contains    ${SHIPPING_ONLINE_CREDIT_SECTION}    ${SHIPPING_ONLINE_CREDIT_SECTION_TEXT}  
    #Verify Check Expire Date
    Wait Until Element Contains    ${SHIPPING_ONLINE_CREDIT_SECTION}    ${SHIPPING_ONLINE_CREDIT_CHECK_EXPIRE_DATE_TEXT}
    Click Element    ${SHIPPING_ONLINE_CREDIT_CHECK_EXPIRE_DATE}
    #Verify Check Expire Date Popup
    Wait Until Page Contains Element    ${SHIPPING_ONLINE_CREDIT_CHECK_EXPIRE_DATE_POPUP}    5s
    Wait Until Page Contains Element    ${SHIPPING_ONLINE_CREDIT_EXPIRE_DATE_TEXT}    3s
    #Click Close popup
    Click Element    ${SHIPPING_ONLINE_CREDIT_CHECK_EXPIRE_DATE_POPUP_CLOSE_BUTTON}
    Sleep    3s
    #Get available credit Value
    Wait Until Element Contains    ${SHIPPING_ONLINE_CREDIT_AVAILABLE_CREDIT}    ${SHIPPING_ONLINE_CREDIT_AVAILABLE_CREDIT_TEXT}
    ${AVAILABLE CREDIT}    Get Text    ${SHIPPING_ONLINE_CREDIT_AVAILABLE_CREDIT_VALUE}
    Log To Console    Available Credit is ${AVAILABLE CREDIT}
    Sleep    5s
    #Verify the applicable Credit
    Wait Until Page Contains Element   ${SHIPPING_ONLINE_CREDIT_APPLIED_CREDIT}
    Sleep    2s
    #Get applicable credit Value
    ${APPLIED CREDIT}    Get Text    ${SHIPPING_ONLINE_CREDIT_APPLIED_CREDIT_VALUE}
    Log To Console    Applicable Credit is ${APPLIED CREDIT}
    #Click on Use Online Credit button
    Click Button    ${SHIPPING_ONLINE_CREDIT_USE_ONLINE_CREDIT_BUTTON}
    Sleep    3s
    #Verify the Success Message of online Credit
    Wait Until Page Contains Element    ${SHIPPING_ONLINE_CREDIT_SUCCESS_POPUP}
    #Click OK Button
    Click Button    ${SHIPPING_ONLINE_CREDIT_OK_BUTTON}
    #Verify button after Use Online Credit
    Wait Until Page Contains Element    ${SHIPPING_ONLINE_CREDIT_CC_USE_ONLINE_CREDIT_BUTTON}
    #Input Promotion code
    Input Text    ${SHIPPING_PROMOTION_CODE_FIELD}    ${PROMOTION_CODE}
    #Click Apply button
    Click Element    ${SHIPPING_PROMOTION_APPLY_BUTTON}
    Sleep    3s
    #Verify the Success Message of online Credit
    Wait Until Page Contains Element    ${SHIPPING_PROMOTION_SUCCESS_POPUP}
    #Click OK Button
    Sleep    3s
    Click Element    ${SHIPPING_PROMOTION_SUCCESS_POPUP_OK_BUTTON}
    Sleep    3s
    #The Subtotal on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL_VALUE}
    Log To Console    Subtotal is ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL}
    #Verify the Shipping Fee on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE_VALUE}
    Log To Console    Shipping Fee is ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE}
    #Verify Total discount
    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL_DISCOUNT}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL_DISCOUNT_VALUE}
    Log To Console    Shipping Fee is ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL_DISCOUNT}
    #verify Online Credits
    ${SHIPPING_ORDER_INFORMATION_SECTION_ONLINE_CREDITS}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_ONLINE_CREDITS_VALUE}
    Log To Console    Shipping Fee is ${SHIPPING_ORDER_INFORMATION_SECTION_ONLINE_CREDITS}
    #Verify the Total Price on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL_VALUE}
    Log To Console    Total is ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL}
    #Verify the Promotion discount
    ${SHIPPING_ORDER_INFORMATION_SECTION_PROMOTION_DISCOUNT}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL_DISCOUNT_VALUE}
    Log To Console    Promotion discount is ${SHIPPING_ORDER_INFORMATION_SECTION_PROMOTION_DISCOUNT}
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
    Sleep    2s
    #Verify SHIPPING_SECTION
    Wait Until Element Contains    ${THANKYOU_SHIPPING_SECTION}    ${THANKYOU_SHIPPING_TEXT}
    #Verify PAYMENT_SECTION
    Wait Until Element Contains    ${THANKYOU_PAYMENT_SECTION}    ${THANKYOU_PAYMENT_TEXT}
    #Verify ITEM_LIST_SECTION
    Wait Until Element Contains    ${THANKYOU_ITEM_LIST_SECTION}    ${THANKYOU_ITEM_LIST_TEXT}
    #Verify ORDER_NUMBER
    ${GUEST_ORDER_NUMBER}=    Get Text    ${THANKYOU_GET_REGISTER_ORDER_NUMBER}
    Log To Console    Order Number is ${GUEST_ORDER_NUMBER}
    #Verify Sub total
    ${THANKYOU_SUB_TOTAL}=    Get Text    ${THANKYOU_SUB_TOTAL_TEXT}
    Log To Console    Sub total is ${THANKYOU_SUB_TOTAL}
    #Verify Shipping Fee
    ${THANKYOU_SHIPPING_FEE}=    Get Text    ${THANKYOU_SHIPPING_FEE_TEXT}
    Log To Console    Shipping Fee is ${THANKYOU_SHIPPING_FEE}
    #Verify COD Charges
    ${THANKYOU_COD_CHARGES}=    Get Text    ${THANKYOU_COD_CHARGES_TEXT}
    Log To Console    COD Charges is ${THANKYOU_COD_CHARGES}
    #Verify Total
    ${THANKYOU_TOTAL}=    Get Text    ${THANKYOU_TOTAL_TEXT}
    Log To Console    Total is ${THANKYOU_COD_CHARGES}
    Sleep    3s

Payment and Order CF_TC_12: To verify customer able to place an order with Online Credit balance, Promotion code and any one of the payment option
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL_EXISTING_CUSTOMER}      ${LOGIN_PASSWORD_EXISTING_CUSTOMER}
    Wait Until Element Is Not Visible    ${LOGIN_POPUP}
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
    Execute Javascript    window.scrollTo(0,3200)
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
    Execute Javascript    window.scrollTo(0,0)
    #--------------------------------------------- Shipping Page ---------------------------------------------------
    Sleep    5s
    #Verify the Order Information title on Checkout page
    Wait Until Element Contains    ${SHIPPING_ORDER_INFORMATION_SECTION}    ${SHIPPING_ORDER_INFORMATION_SECTION_TEXT}
    #Input Promotion code
    Input Text    ${SHIPPING_PROMOTION_CODE_FIELD}    ${PROMOTION_CODE}
    #Click Apply button
    Click Element    ${SHIPPING_PROMOTION_APPLY_BUTTON}
    Sleep    3s
    #Verify the Success Message of online Credit
    Wait Until Page Contains Element    ${SHIPPING_PROMOTION_SUCCESS_POPUP}
    #Click OK Button
    Sleep    3s
    Click Element    ${SHIPPING_PROMOTION_SUCCESS_POPUP_OK_BUTTON}
    Sleep    3s
    #The Subtotal on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL_VALUE}
    Log To Console    Subtotal is ${SHIPPING_ORDER_INFORMATION_SECTION_SUBTOTAL}
    #Verify the Shipping Fee on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE_VALUE}
    Log To Console    Shipping Fee is ${SHIPPING_ORDER_INFORMATION_SECTION_SHIPPING_FEE}
    #Verify Total discount
    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL_DISCOUNT}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL_DISCOUNT_VALUE}
    Log To Console    Total discount is ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL_DISCOUNT}
    #Verify the Promotion discount
    ${SHIPPING_ORDER_INFORMATION_SECTION_PROMOTION_DISCOUNT}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL_DISCOUNT_VALUE}
    Log To Console    Promotion discount is ${SHIPPING_ORDER_INFORMATION_SECTION_PROMOTION_DISCOUNT}
    #Verify the Total Price on Checkout page
    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL}    Get Text    ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL_VALUE}
    Log To Console    Total is ${SHIPPING_ORDER_INFORMATION_SECTION_TOTAL}
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
    Sleep    2s
    #Verify SHIPPING_SECTION
    Wait Until Element Contains    ${THANKYOU_SHIPPING_SECTION}    ${THANKYOU_SHIPPING_TEXT}
    #Verify PAYMENT_SECTION
    Wait Until Element Contains    ${THANKYOU_PAYMENT_SECTION}    ${THANKYOU_PAYMENT_TEXT}
    #Verify ITEM_LIST_SECTION
    Wait Until Element Contains    ${THANKYOU_ITEM_LIST_SECTION}    ${THANKYOU_ITEM_LIST_TEXT}
    #Verify ORDER_NUMBER
    ${GUEST_ORDER_NUMBER}=    Get Text    ${THANKYOU_GET_REGISTER_ORDER_NUMBER}
    Log To Console    Order Number is ${GUEST_ORDER_NUMBER}
    #Verify Sub total
    ${THANKYOU_SUB_TOTAL}=    Get Text    ${THANKYOU_SUB_TOTAL_TEXT}
    Log To Console    Sub total is ${THANKYOU_SUB_TOTAL}
    #Verify Shipping Fee
    ${THANKYOU_SHIPPING_FEE}=    Get Text    ${THANKYOU_SHIPPING_FEE_TEXT}
    Log To Console    Shipping Fee is ${THANKYOU_SHIPPING_FEE}
    #Verify COD Charges
    ${THANKYOU_COD_CHARGES}=    Get Text    ${THANKYOU_COD_CHARGES_TEXT}
    Log To Console    COD Charges is ${THANKYOU_COD_CHARGES}
    #Verify Total
    ${THANKYOU_TOTAL}=    Get Text    ${THANKYOU_TOTAL_TEXT}
    Log To Console    Total is ${THANKYOU_COD_CHARGES}
    Sleep    3s