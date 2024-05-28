*** Settings ***
Library    SeleniumLibrary
Resource    keywords.robot
Resource    variables_text.robot
Resource    variables_locator.robot


*** Test Cases ***  

Password_TC_1: Verify New And Confirm Password Should Match
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}
    Click Element    ${LOGIN_ICON}
    Click Element    ${MY_PROFILE_BTN_2} 
    Wait Until Page Contains    ${MY_PROFILE_PAGE_2} 
    #Change password section
    Click Button    ${CHANGE_PASSWORD_BTN_2} 
    Wait Until Page Contains    ${EDIT_PROFILE_2}
    Execute Javascript    window.scrollTo(0,900)
    Wait Until Page Contains Element    ${CURRENT_PASSWORD_TXT_2}                        
    Input Text    ${CURRENT_PASSWORD_TXT_2}    ${CURRENT_PASSWORD_2}  
    Click Element    ${NEW_PASSWORD_TXT_2}
    #Verify new and confirm password
    Input Password    ${NEW_PASSWORD_TXT_2}     ${NEW_PASSWORD_2} 
    Click Element    ${CONFIRM_PASSWORD_TXT_2}     
    Input Password    ${CONFIRM_PASSWORD_TXT_2}     ${VERIFY_CONFIRM_PASSWORD_2} 
    Click Element    ${UPDATE_PASSWORD_BTN_2}
    Wait Until Page Contains Element    ${ERROR_CONFIRM_PASSWORD_2} 
    Close Browser
    
Password_TC_2: Verify With Invalid Current Password
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}
    Click Element    ${LOGIN_ICON}
    Click Element    ${MY_PROFILE_BTN_2} 
    Wait Until Page Contains    ${MY_PROFILE_PAGE_2} 
    #Change password section
    Click Button    ${CHANGE_PASSWORD_BTN_2} 
    Wait Until Page Contains    ${EDIT_PROFILE_2}
    Execute Javascript    window.scrollTo(0,900)
    Wait Until Page Contains Element    ${CURRENT_PASSWORD_TXT_2}                        
    Input Text    ${CURRENT_PASSWORD_TXT_2}    ${VERIFY_CURRENT_PASSWORD_2}  
    Click Element    ${NEW_PASSWORD_TXT_2}
    #Verify new and confirm password
    Input Password    ${NEW_PASSWORD_TXT_2}     ${NEW_PASSWORD_2} 
    Click Element    ${CONFIRM_PASSWORD_TXT_2}     
    Input Password    ${CONFIRM_PASSWORD_TXT_2}     ${CONFIRM_PASSWORD_2}
    Click Element    ${UPDATE_PASSWORD_BTN_2}
    Wait Until Page Contains Element  ${ERROR_CURRENT_PASSWORD_2}
    Click Element    ${ERROR_CURRENT_BTN_2} 
    Wait Until Element Is Not Visible      ${ERROR_CURRENT_PASSWORD_2}
    Close Browser 

Password_TC_3: Verify Mandatory Fields in Update Password
   Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}
    Click Element    ${LOGIN_ICON}
    Click Element    ${MY_PROFILE_BTN_2} 
    Wait Until Page Contains    ${MY_PROFILE_PAGE_2} 
    #Change password section
    Click Button    ${CHANGE_PASSWORD_BTN_2} 
    Wait Until Page Contains    ${EDIT_PROFILE_2}
    Execute Javascript    window.scrollTo(0,900)
    Wait Until Page Contains Element    ${CURRENT_PASSWORD_TXT_2}                       
    Input Text    ${CURRENT_PASSWORD_TXT_2}    ${VERIFY_CURRENT_PASSWORD_2}   
    Clear Element Text    ${CURRENT_PASSWORD_TXT_2}     
    Input Password    ${NEW_PASSWORD_TXT_2}     ${NEW_PASSWORD_2} 
    Clear Element Text    ${NEW_PASSWORD_TXT_2}    
    Input Password    ${CONFIRM_PASSWORD_TXT_2}     ${VERIFY_CONFIRM_PASSWORD_2} 
    Clear Element Text    ${CONFIRM_PASSWORD_TXT_2} 
    Click Element    ${UPDATE_PASSWORD_BTN_2}
    Wait Until Page Contains Element    ${ERROR_CURRENT_PASSWORD_2}    
    Wait Until Page Contains Element    ${ERROR_EMPTY_NEW_PWD_2}
    Wait Until Page Contains Element    ${ERROR_CONFIRM_PASSWORD_2}      
    Sleep    5s
    Close Browser

Password_TC_4: Update Password My Profile
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}
    Click Element    ${LOGIN_ICON}
    Click Element    ${MY_PROFILE_BTN_2} 
    Wait Until Page Contains    ${MY_PROFILE_PAGE_2} 
    Change Password
    Close Browser