*** Settings ***
Library    SeleniumLibrary
Resource    keywords.robot
Resource    variables_locator.robot   
Resource    variables_text.robot

*** Test Cases ***  

Utility_Pages_TC_1: 404ErrorPage_Guest
    Open Website
    Accept Cookies
    Open Worn Website
    Wait Until Element Contains    ${URL_404ERROR_2}    ${URL_404ERROR_TXT_2}   
    Close Browser

Utility_Pages_TC_2: 404ErrorPage_Register
    Open Worn Website
    Accept Cookies
    Login    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD} 
    Wait Until Element Contains    ${URL_404ERROR_2}    ${URL_404ERROR_TXT_2}   
    Click Element    ${PROFILE_BTN_2}  
    Click Element    ${LOGOUT_2}

Utility_Pages_TC_3: Submit_ContactUS_Guest
    Open Website
    Accept Cookies
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Click Element    ${FOOTER_CONTACTUS_2}
    Wait Until Element Contains    ${CONTACTUS_PAGE_2}    ${CONTACTUS_PAGE_TXT_2} 
    Input Text    ${CONTACTUS_FNAME_2}    ${CONTACTUS_FNAME__INPUT_2} 
    Execute Javascript    window.scrollTo(0,300)
    Input Text    ${CONTACTUS_LNAME_2}   ${CONTACTUS_LNAME_INPUT_2}
    Input Text    ${CONTACTUS_EMAIL_2}    tanaporn.t@jaspal.co.th  
    Clear Element Text    ${CONTACTUS_ISD_2}
    Input Text    ${CONTACTUS_ISD_2}    ${CONTACTUS_ISD_SELECT_2} 
    Input Text    ${CONTACTUS_TELEPHONE_2}    ${CONTACTUS_TELEPHONE_INPUT_2}
    Click Element    ${CONTACTUS_REASON_LIST_2}
    Click Element    ${CONTACTUS_REASON_2}
    Input Text    ${CONTACTUS_COMMENT_2}    ${CONTACTUS_COMMENT_INPUT_2} 
    Click Element    ${CONTACTUS_SUBMIT_2}  
    Wait Until Element Contains    ${CONTACTUS_POPUP_2}    ${CONTACTUS_POPUP_TXT_2}   
    Click Element    ${CONTACTUS_OK_2}    
    Wait Until Element Is Not Visible    ${CONTACTUS_POPUP_2} 
    Close Browser

Utility_Pages_TC_4: Submit_ContactUS_Register
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}   
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Click Element    ${FOOTER_CONTACTUS_2}
    Wait Until Element Contains    ${CONTACTUS_PAGE_2}    ${CONTACTUS_PAGE_TXT_2}
    Input Text    ${CONTACTUS_FNAME_2}    ${CONTACTUS_FNAME__INPUT_2}
    Execute Javascript    window.scrollTo(0,300)
    Input Text    ${CONTACTUS_LNAME_2}   ${CONTACTUS_LNAME_INPUT_2} 
    Input Text    ${CONTACTUS_EMAIL_2}    ${CONTACTUS_EMAIL_INPUT_2} 
    Clear Element Text    ${CONTACTUS_ISD_2}
    Input Text    ${CONTACTUS_ISD_2}    ${CONTACTUS_ISD_SELECT_2}
    Input Text    ${CONTACTUS_TELEPHONE_2}    ${CONTACTUS_TELEPHONE_INPUT_2}
    Click Element    ${CONTACTUS_REASON_LIST_2}
    Click Element    ${CONTACTUS_REASON_2}
    Input Text    ${CONTACTUS_COMMENT_2}    ${CONTACTUS_COMMENT_INPUT_2}
    Click Element    ${CONTACTUS_SUBMIT_2}  
    Wait Until Element Contains    ${CONTACTUS_POPUP_2}    ${CONTACTUS_POPUP_TXT_2}
    Click Element    ${CONTACTUS_OK_2}    
    Wait Until Element Is Not Visible    ${CONTACTUS_POPUP_2} 
    Execute Javascript    window.scrollTo(0, document.body.scrollTop)
    Click Element    ${PROFILE_BTN_2}  
    Click Element    ${LOGOUT_2}
    Close Browser 
