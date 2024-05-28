*** Settings ***
Library    SeleniumLibrary
Resource   keywords.robot
Resource    variables_locator.robot
Resource    variables_text.robot

*** Test Cases *** 

Payment and Order CF_TC_1: To To verify Registered customer able to place an order with Online Credit balance during checkout process
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}   
    Click Element    ${SEARCH_BTN_2}
    Input Text    ${SEARCH_TXT_2}    ${PRODUCT_NAME_2}
    Click Element    ${SEARCH_RESULT_2}
    Wait Until Page Contains Element   ${RESULT_PRODUCT_2}   
    Execute Javascript    window.scrollTo(0,300)
    Click Element     ${MYNX_LOVE_TEE_2}
    Wait Until Element Contains    ${PDP_RESULT_MYNX_LOVE_TEE_2}    ${PO_PRODUCT_NAME_2}
    Execute Javascript    window.scrollTo(0,3000)
    Wait Until Element Is Visible    ${PDP_ADDTOBAG_BTN_2}  
    Sleep    5s 
    Click Element    ${PDP_ADDTOBAG_BTN_2}
    Wait Until Element Contains    ${PDP_WLPOPUP_2}    ${PO_WLPOPUP_TXT_2} 
    Click Element    ${PDP_OK_BTN_2}
    Wait Until Element Is Not Visible    ${PDP_WLPOPUP_2}
    ${PO_MYBAG_COUNT_2}    Get Text     ${PO_MYBAG_2}
    Log To Console    My Bag ${PO_MYBAG_COUNT_2}    
    Click Element    ${PO_MYBAG_ICON_2}
    Wait Until Element Is Visible    ${PO_MINICART_CHECKOUT_2}
    Click Button    ${PO_MINICART_CHECKOUT_2}
    #Shipping
    Wait Until Element Contains    ${PO_SHPPING_TITLE_2}    ${PO_SHPPING_TXT_2} 
    Click Element    ${PO_SELECT_PROVINCE_2}
    Wait Until Element Contains    ${PO_PROVINCE_2}    ${PO_PROVINCE_SELECT_2} 
    Click Element    ${PO_PROVINCE_2} 
    Wait Until Element Contains    ${PO_DISTRICT_2}    ${PO_DISTRICT_SELECT_2}
    Click Element    ${PO_DISTRICT_2} 
    Wait Until Element Contains    ${PO_SUBDISTRICT_2}    ${PO_SUBDISTRICT_SELECT_2} 
    Click Element    ${PO_SUBDISTRICT_2}
    Wait Until Element Contains    ${PO_POSTCODE_2}    ${PO_POSTCODE_SELECT_2} 
    Input Text    ${PO_HOUSE_NUMBER_2}    ${PO_HOUSE_NUMBER_INPUT_2}
    Input Text    ${PO_ROAD_2}    ${PO_ROAD_INPUT_2}
    Execute Javascript    window.scrollTo(0,3200)
    Input Text    ${PO_PHONE_NUMBER_2}     ${PO_PHONE_NUMBER_INPUT_2}
    Click Element    ${PO_SHIPPING_METHOD_2}
    #Verify Order Info]
    ${PO_SUBTOTAL_TXT_2}=   Get Value   ${PO_SUBTOTAL_2} 
    Log To Console  ${PO_SUBTOTAL_TXT_2}
    #Payment COD
    Click Element    ${PO_PROCEED_TO_PAYMENT_2}   
    Wait Until Element Contains    ${PO_PAYMENT_TITLE_2}    ${PO_PAYMENT_TXT_2}  
    Click Element    ${PO_CREDITCARD_2}
    Input Text    ${PO_CARD_NAME_2}     ${PO_CARD_NAME_INPUT_2} 
    Input Text    ${PO_CARD_NUMBER_2}    ${PO_CARD_NUMBER_INPUT_2} 
    Select From List By Value    ${PO_CARD_MONTH_2}    ${PO_CARD_MONTH__INPUT_2}  
    Select From List By Value   ${PO_CARD_YEAR_2}    ${PO_CARD_YEAR_INPUT_2} 
    Input Text    ${PO_CARD_CVV_2}    ${PO_CARD_CVV_INPUT_2} 
    Click Element    ${PO_PROCEED_To_VIEWORDER_2}    
    Wait Until Element Contains    ${PO_REVIEW_ORDER_2}    ${PO_REVIEW_ORDER_TXT_2}
    Click Element    ${PO_PLACE_ORDER_2}
    #Wait Until Element Contains    ${PO_THANK_MSG_2}    Your order is on its way to you. // -*-
    ${PO_THANKYOU_TXT_2}=    Get Value    ${PO_THANK_MSG_2}
    Log To Console    ${PO_THANKYOU_TXT_2} 
    Sleep    5s









