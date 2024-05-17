*** Settings ***
Library    SeleniumLibrary
Resource    variables_locator.robot
Resource    variables_text.robot

*** Keywords ***
Open Website
    Open Browser    ${URL}    gc  
    Maximize Browser Window
Login
    [Arguments]    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}
    Click Element    ${LOGIN_ICON}
    Click Element    ${LOGIN_MENU}
    Wait Until Element Contains    ${LOGIN_POPUP}    ${LOGIN_POPUP_TEXT}
    Click Element    ${LOGIN_EMAIL_TEXTBOX}
    Input Text    ${LOGIN_EMAIL_TEXTBOX}        ${LOGIN_EMAIL}
    Click Element    ${LOGIN_PASSWORD_TEXTBOX}
    Input Text    ${LOGIN_PASSWORD_TEXTBOX}    ${LOGIN_PASSWORD}
    Click Element    ${LOGIN_BUTTON}
    Sleep    1s
    Wait Until Element Is Not Visible    ${LOGIN_POPUP}
    Sleep    1s
Logout
    Wait Until Page Contains Element    ${LOGIN_ICON}
    Click Element    ${LOGIN_ICON}
    Click Element    ${LOGOUT_MENU}
    Wait Until Page Contains Element    ${WEB_LOGO}
Create Account
    Click Element    ${LOGIN_ICON}
    Click Element    ${CREATE_ACCOUNT_MENU}
    Wait Until Element Contains    ${CREATE_ACCOUNT_POPUP}    CREATE ACCOUNT
    
Delete Account
    Open Browser    ${ADMIN_JAS_URL}    Chrome
    Delete All Cookies
    #Should enter data by Login Magento >> input 2FA >> inspect >> application >> cookies >> admin ad
    Add Cookie    admin    45a3128b344612c074bd20761f01ab56
    Reload Page
    Maximize Browser Window
    Click Element    ${ADMIN_CUSTOMER_MENU}
    Wait Until Page Contains Element    ${ADMIN_CUSTOMER_ALL_CUSTOMER_OPTION_POPUP}
    Sleep    1s
    Click Element    ${ADMIN_CUSTOMER_ALL_CUSTOMER}
    Wait Until Page Contains Element    ${ADMIN_CUSTOMER_ALL_CUSTOMER_SEARCH_FIELD}
    Input Text    ${ADMIN_CUSTOMER_ALL_CUSTOMER_SEARCH_FIELD}    kittiyanuey994@gmail.com
    sleep    5s
    #Check 
    Click Element    xpath=//div[text()='kittiyanuey994@gmail.com']//ancestor::tr/td/div[text()='JASPAL Main Website']//ancestor::tr//input[@class='admin__control-checkbox']
    Click Element    xpath=//div[@class='action-select-wrap']/button[@class='action-select']
    Click Element     xpath=//div[contains(@data-bind, "listing_massaction")]//div[@class="action-menu-items"]//span[text()='Delete']
    Wait Until Element Contains    xpath=//header[@class="modal-header"]/h1[contains(@id, "modal-title-")]    Delete items
    Click Element    xpath=//button[@class="action-primary action-accept"]/span[text()='OK']
    Wait Until Page Contains     were deleted.     
    Sleep    5s

Accept Cookies
    Wait Until Page Contains Element    xpath=//div[@role="document"]//p[text()='The JASPAL site uses cookies.']
    Click Element    xpath=//button[@class="action allow primary btn btn--primary"]
    Sleep    2s