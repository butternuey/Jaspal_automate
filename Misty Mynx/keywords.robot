*** Settings ***
Library    SeleniumLibrary
Resource    variables.robot

*** Keywords ***
Open Website
    Open Browser    ${URL}    gc  
    Maximize Browser Window
Login
    [Arguments]    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}
    Click Element    ${LOGIN_ICON}
    Click Element    ${LOGIN_MENU}
    Wait Until Element Contains    ${LOGIN_POPUP}    LOG IN
    Click Element    ${LOGIN_EMAIL_TEXTBOX}
    Input Text    ${LOGIN_EMAIL_TEXTBOX}        ${LOGIN_EMAIL}
    Click Element    ${LOGIN_PASSWORD_TEXTBOX}
    Input Text    ${LOGIN_PASSWORD_TEXTBOX}    ${LOGIN_PASSWORD}
    Click Element    ${LOGIN_BUTTON}
    Wait Until Element Is Not Visible    ${LOGIN_POPUP}
Logout
    Click Element    ${LOGIN_ICON}
    Click Element    ${LOGOUT_MENU}
    Wait Until Page Contains Element    ${WEB_LOGO_MM}
Create Account
    Click Element    ${LOGIN_ICON}
    Click Element    ${CREATE_ACCOUNT_MENU}
    Wait Until Element Contains    ${CREATE_ACCOUNT_POPUP}    CREATE ACCOUNT
    
Delete Account
    Open Browser    ${ADMIN_MM_URL}    Chrome
    Delete All Cookies
    #Should enter data by Login Magento >> input 2FA >> inspect >> application >> cookies >> admin ad
    Add Cookie    admin    c822cf52e83fc7769557e75f25a92cab
    Reload Page
    Maximize Browser Window
    Click Element    ${ADMIN_CUSTOMER_MENU}
    Wait Until Page Contains Element    ${ADMIN_CUSTOMER_ALL_CUSTOMER_OPTION_POPUP}
    Sleep    1s
    Click Element    ${ADMIN_CUSTOMER_ALL_CUSTOMER}
    Wait Until Page Contains Element    ${ADMIN_CUSTOMER_ALL_CUSTOMER_SEARCH_FIELD}
    Input Text    ${ADMIN_CUSTOMER_ALL_CUSTOMER_SEARCH_FIELD}    butternueybn@gmail.com
    sleep    5s
    #Check 
    Click Element    xpath=//div[text()='butternueybn@gmail.com']//ancestor::tr/td/div[text()='MistyMynx Main Website']//ancestor::tr//input[@class='admin__control-checkbox']
    Click Element    xpath=//div[@class='action-select-wrap']/button[@class='action-select']
    Click Element     xpath=//div[contains(@data-bind, "listing_massaction")]//div[@class="action-menu-items"]//span[text()='Delete']
    Wait Until Element Contains    xpath=//header[@class="modal-header"]/h1[contains(@id, "modal-title-")]    Delete items
    Click Element    xpath=//button[@class="action-primary action-accept"]/span[text()='OK']
    Wait Until Page Contains     were deleted.     
    Sleep    8s

Accept Cookies
    Wait Until Page Contains Element    xpath=//div[@role="document"]//p[text()='The MISTY MYNX site uses cookies.']
    Click Element    xpath=//button[@class="action allow primary btn btn--primary"]
    Sleep    2s