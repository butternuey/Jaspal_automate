*** Settings ***
Library    SeleniumLibrary
Resource    keywords.robot
Resource    variables_locator.robot
Resource    variables_text.robot

*** Test Cases ***
Header-General_TC_1: Search Product_Guest
    Open Website
    Accept Cookies
    #Click on Search icon
    Click Element    ${HOMEPAGE_SEARCH_PRODUCT_ICON}
    #Search Product
    Input Text    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ${PRODUCT_1}
    #Click on Enter
    Press Keys    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ${KEYBOARD_BUTTON_ENTER}
    #Click on product on PLP
    Click Element    ${PLP_PRODUCT_1}
    Wait Until Element Contains    ${PDP_BREADCRUMBS_ITEMLIST}    ${PRODUCT_1}
    Delete All Cookies
    Close Browser

Header-General_TC_2: Search Product_Register
    Open Website
    Accept Cookies
    Login    ${CREATE_ACCOUNT_EMAIL}    ${CREATE_ACCOUNT_PASSWORD}
    Wait Until Element Is Not Visible    ${LOGIN_POPUP}
    #Click on Search icon
    Click Element    ${HOMEPAGE_SEARCH_PRODUCT_ICON}
    #Search Product
    Input Text    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ${PRODUCT_1}
    #Click on Enter
    Press Keys    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ${KEYBOARD_BUTTON_ENTER}
    #Click on product on PLP
    Click Element    ${PLP_PRODUCT_1}
    Wait Until Element Contains    ${PDP_BREADCRUMBS_ITEMLIST}    ${PRODUCT_1}
    Logout
    Delete All Cookies
    Close Browser

Header-General_TC_3: Login And Logout With Valid Credentials
    Open Website
    Accept Cookies
    Login    ${CREATE_ACCOUNT_EMAIL}    ${CREATE_ACCOUNT_PASSWORD}
    Wait Until Element Is Not Visible    ${LOGIN_POPUP}
    Logout
    Delete All Cookies
    Close Browser

Header-General_TC_4: Login With Invalid Credentials
    Open Website
    Accept Cookies
    Login    ${CREATE_ACCOUNT_EMAIL_INVALID}    ${CREATE_ACCOUNT_PASSWORD_INVALID}
    Wait Until Element Contains    ${LOGIN_POPUP}    ${LOGIN_POPUP_INVALID_ERROR_TEXT}
    Delete All Cookies
    Close Browser

Header-General_TC_5: Verify Mandatory Fields In Login
    Open Website
    Accept Cookies
    Login    ${EMPTY}    ${EMPTY}
    Wait Until Element Contains    ${LOGIN_EMAIL_ERROR}    ${LOGIN_EMAIL_EMPTY_ERROR_TEXT}
    Wait Until Element Contains    ${LOGIN_PASSWORD_ERROR}    ${LOGIN_PASSWORD_EMPTY_ERROR_TEXT}
    Delete All Cookies
    Close Browser

Header-General_TC_6: Verify Mega Menu / Bread Crumbs_Guest
    Open Website
    Accept Cookies
    #Click New In collection
    Click Element    ${HEADER_COLLECTION_NEW_IN} 
    Wait Until Element Contains    ${HEADER_BREADCRUMBS}    ${COLLECTION_NEW_IN}
    #Click Collection collection
    Click Element    ${HEADER_COLLECTION_COLLECTION} 
    Wait Until Element Contains    ${HEADER_BREADCRUMBS}    ${COLLECTION_COLLECTION}        
    #Click Active collection
    Click Element    ${HEADER_COLLECTION_ACTIVE}
    Wait Until Element Contains    ${HEADER_BREADCRUMBS}    ${COLLECTION_ACTIVE} 
    #Click QA Product collection
    Click Element    ${HEADER_COLLECTION_QA_PRODUCT} 
    Wait Until Element Contains    ${HEADER_BREADCRUMBS}    ${COLLECTION_QA_PRODUCT}
    Delete All Cookies
    Close Browser

Header-General_TC_7: Verify Mega Menu / Bread Crumbs_Register
    Open Website
    Accept Cookies
    Login    ${CREATE_ACCOUNT_EMAIL}    ${CREATE_ACCOUNT_PASSWORD}
    Wait Until Element Is Not Visible    ${LOGIN_POPUP}
    #Click New In collection
    Click Element    ${HEADER_COLLECTION_NEW_IN} 
    Wait Until Element Contains    ${HEADER_BREADCRUMBS}    ${COLLECTION_NEW_IN}
    #Click Collection collection
    Click Element    ${HEADER_COLLECTION_COLLECTION} 
    Wait Until Element Contains    ${HEADER_BREADCRUMBS}    ${COLLECTION_COLLECTION}        
    #Click Active collection
    Click Element    ${HEADER_COLLECTION_ACTIVE}
    Wait Until Element Contains    ${HEADER_BREADCRUMBS}    ${COLLECTION_ACTIVE} 
    #Click QA Product collection
    Click Element    ${HEADER_COLLECTION_QA_PRODUCT} 
    Wait Until Element Contains    ${HEADER_BREADCRUMBS}    ${COLLECTION_QA_PRODUCT}
    Logout
    Delete All Cookies
    Close Browser

Header-General_TC_8: Able to Switch Language_Guest
    Open Website
    Accept Cookies
    #Verify EN Store  
    Wait Until Page Contains Element    ${HEADER_DROPDOWN_LANGUAGE_ENG} 
    #Change Language to TH Store
    Click Element    ${HEADER_DROPDOWN_LANGUAGE_ENG}
    Click Element    ${HEADER_DROPDOWN_LANGUAGE_THAI_OPTION}
    Wait Until Page Contains Element    ${HEADER_DROPDOWN_LANGUAGE_THAI}
    Delete All Cookies
    Close Browser

Header-General_TC_9: Able to Switch Language_Register
    Open Website
    Accept Cookies
    Login    ${CREATE_ACCOUNT_EMAIL}    ${CREATE_ACCOUNT_PASSWORD}
    Wait Until Element Is Not Visible    ${LOGIN_POPUP}
    #Verify EN Store  
    Wait Until Page Contains Element    ${HEADER_DROPDOWN_LANGUAGE_ENG} 
    #Change Language to TH Store
    Click Element    ${HEADER_DROPDOWN_LANGUAGE_ENG}
    Click Element    ${HEADER_DROPDOWN_LANGUAGE_THAI_OPTION}
    Wait Until Page Contains Element    ${HEADER_DROPDOWN_LANGUAGE_THAI}
    Logout
    Delete All Cookies
    Close Browser

Header-General_TC_10: Able to Switch Currency_Guest
    Open Website
    Accept Cookies
    #Verify THB
    Wait Until Page Contains Element    ${HEADER_DROPDOWN_CURRENCY_THB}
    #Change to USD
    Click Element    ${HEADER_DROPDOWN_CURRENCY_THB}
    Click Element    ${HEADER_DROPDOWN_CURRENCY_OPTION}
    Sleep    1s
    Wait Until Page Contains Element    ${HEADER_DROPDOWN_CURRENCY_USD}
    Delete All Cookies
    Close Browser

Header-General_TC_11: Able to Switch Currency_Register
    Open Website
    Accept Cookies
    Login    ${CREATE_ACCOUNT_EMAIL}    ${CREATE_ACCOUNT_PASSWORD}
    Wait Until Element Is Not Visible    ${LOGIN_POPUP}
    #Verify THB
    Wait Until Page Contains Element    ${HEADER_DROPDOWN_CURRENCY_THB}
    #Change to USD
    Click Element    ${HEADER_DROPDOWN_CURRENCY_THB}
    Click Element    ${HEADER_DROPDOWN_CURRENCY_OPTION}
    Sleep    1s
    Wait Until Page Contains Element    ${HEADER_DROPDOWN_CURRENCY_USD}
    Logout
    Delete All Cookies
    Close Browser
