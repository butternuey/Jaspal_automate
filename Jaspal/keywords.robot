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
    Sleep    3s

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

Close Free Gift Popup
    Wait Until Page Contains Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP}    20s
    Sleep    5s
    Click Element    ${VIEW_MY_BAG_FREE_GIFT_POPUP_CLOSE}
    Wait Until Element Is Not Visible    ${VIEW_MY_BAG_FREE_GIFT_POPUP}    10s

Delete Item And Verify Empty Bag
    #Verify the Delete button in view bags
    Wait Until Page Contains Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_REMOVE_ITEM}    10s
    #Click delete button
    Click Element    ${VIEW_MY_BAG_PRODUCT_ITEM_DETAIL_REMOVE_ITEM}
    #Verify my bag page is empty
    Wait Until Page Contains    ${VIEW_MY_BAG_PAGE_EMPTY_TEXT}    10s

Change Password
     Click Button    ${CHANGE_PASSWORD_BTN_2}
     Wait Until Page Contains    ${EDIT_PROFILE_2}
     Execute Javascript    window.scrollTo(0,900)
     Wait Until Page Contains Element    ${CURRENT_PASSWORD_TXT_2}                        
     Input Text    ${CURRENT_PASSWORD_TXT_2}    ${CURRENT_PASSWORD_2}  
     Click Element    ${NEW_PASSWORD_TXT_2}
     Input Password    ${NEW_PASSWORD_TXT_2}     ${NEW_PASSWORD_2}
     Click Element    ${CONFIRM_PASSWORD_TXT_2}    
     Input Password    ${CONFIRM_PASSWORD_TXT_2}     ${CONFIRM_PASSWORD_2}
     Sleep    5s
     Click Element    ${UPDATE_PASSWORD_BTN_2}
     Close All Browsers

Open Worn Website
    Open Browser    ${WORN_URL}    gc  
    Maximize Browser Window

Delete item from mini cart
    Click Element    ${MINI_CART_ICON}
    Wait Until Page Contains Element    ${MINI_CART_POPUP}
    #Click on delete icon
    Click Element    ${MINI_CART_DELETE_ICON}
    #Verify delete popup
    Wait Until Page Contains Element    ${MINI_CART_DELETE_POPUP}
    #Click ok button to delete
    Click Element    ${MINI_CART_DELETE_POPUP_OK_BUTTON}
    Wait Until Element Is Not Visible    ${MINI_CART_DELETE_POPUP}
    #Verify Mini cart is empty
    Click Element    ${MINI_CART_ICON}
        
