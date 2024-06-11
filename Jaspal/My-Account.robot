*** Settings ***
Library    SeleniumLibrary
Resource   keywords.robot
Resource   variables_text.robot
Resource   variables_locator.robot

*** Test Cases ***  
My_Account_TC_1: MyOrder_Filter_Register
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}   
    Wait Until Page Does Not Contain Element    ${LOGIN_POPUP}
    Mouse Over     ${PROFILE_BTN_2}
    Click Element    ${PROFILE_BTN_2}  
    Click Element    ${ACC_DASHBOARD_2}  
    Sleep    5s
    Wait Until Element Contains    ${DASHBOARD_TITLE_2}    ${ACC_DASHBOAD_2}
    Click Element    ${MYORDER_MENU_2}
    Wait Until Element Contains    ${MYORDER_TITLE_2}    ${ACC_ORDER_2} 
    Mouse Over    ${MYORDER_FILTER_STATUS_2}
    Click Element    ${MYORDER_FILTER_STATUS_2}
    Click Element    ${MYORDER_FILTER_DDL_2}
    Mouse Over    ${MYORDER_APPLY_FILTER_2}  
    Click Element    ${MYORDER_APPLY_FILTER_2} 
    Click Element    ${MYORDER_FILTER_RESET_2} 
    Wait Until Element Is Visible    ${MYORDER_FILTER_STATUS_2}
    Click Element    ${PROFILE_BTN_2}  
    Click Element    ${LOGOUT_2}
    Close Browser

My_Account_TC_2: MyProfile_Update EmailID_Register
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}   
    Execute Javascript    window.scrollTo(0,300)
    Mouse Over     ${PROFILE_BTN_2}  
    Click Element    ${PROFILE_BTN_2}  
    Click Element    ${ACC_DASHBOARD_2}  
    Sleep    5s
    Wait Until Element Contains    ${DASHBOARD_TITLE_2}    ${ACC_DASHBOAD_2}
    Click Element    ${MYPROFILE_MENU_2}
    Wait Until Element Contains    ${MYPROFILE_TITLE_2}    ${ACC_PROFILE_2}
    Click Element    ${MYPROFILE_EDIT_2}
    Select Checkbox    ${MYPROFILE_CHANGE_EMAIL_CHECKBOX_2}
    Clear Element Text    ${MYPROFILE_EMAIL_EDIT_2}
    Input Text    ${MYPROFILE_EMAIL_EDIT_2}    ${MYPROFILE_NEWEMAIL_INPUT_2}
    Execute Javascript    window.scrollTo(0,300)   
    Input Password    ${MYPROFILE_PWD_2}    ${LOGIN_PASSWORD}   
    Press Keys    ${MYPROFILE_PWD_2}    ENTER  
    Wait Until Element Contains    ${MYPROFILE_SUCCESS_POPUP_2}    ${ACC_PROFILE_EMAIL_COMFIRM_2}
    Sleep    2s
    Click Element    ${MYPROFILE_OK_BTN_2} 
    Wait Until Element Is Not Visible    ${MYPROFILE_OK_BTN_2} 
    Click Element    ${PROFILE_BTN_2}  
    Click Element    ${LOGOUT_2}
    Close Browser  

My_Account_TC_3: View Social Link_My Profile_Register
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}   
    Execute Javascript    window.scrollTo(0,300)
    Mouse Over     ${PROFILE_BTN_2}  
    Click Element    ${PROFILE_BTN_2}  
    Click Element    ${ACC_DASHBOARD_2}  
    Sleep    5s
    Wait Until Element Contains    ${DASHBOARD_TITLE_2}    ${ACC_DASHBOAD_2}
    Click Element    ${MYPROFILE_MENU_2}
    Wait Until Element Contains    ${MYPROFILE_TITLE_2}    ${ACC_PROFILE_2}
    Execute Javascript    window.scrollTo(0,500)
    Sleep    5s
    Click Element    ${SOCIAL_LINK_FACEBOOK_2}
    Go Back
    Click Element    ${SOCIAL_LINK_GOOGLE_2}
    Go Back
    Click Element    ${PROFILE_BTN_2}  
    Click Element    ${LOGOUT_2}
    Close Browser  

My_Account_TC_4: View Dash Board _Register
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}   
    Execute Javascript    window.scrollTo(0,300)
    Mouse Over     ${PROFILE_BTN_2}  
    Click Element    ${PROFILE_BTN_2}  
    Click Element    ${ACC_DASHBOARD_2}  
    Wait Until Element Contains    ${DASHBOARD_TITLE_2}    ${ACC_DASHBOAD_2}
    Click Element    ${PROFILE_BTN_2}  
    Click Element    ${LOGOUT_2}
    Close Browser  

My_Account_TC_5: Create Wishlist_Register
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}   
    Execute Javascript    window.scrollTo(0,300)
    Mouse Over     ${PROFILE_BTN_2}  
    Click Element    ${PROFILE_BTN_2}  
    Click Element    ${ACC_DASHBOARD_2}  
    Wait Until Element Contains    ${DASHBOARD_TITLE_2}    ${ACC_DASHBOAD_2}
    Click Element    ${MYWISHLIST_MENU_2}
    Wait Until Page Contains Element    ${MYWISHLIST_TITLE_2}
    #Create Wishlist 
    Sleep    5s
    Click Element    ${WISHLIST_CREATE_2} 
    Sleep    5s
    Input Text    ${WISHLIST_NAME_2}    ${WISHLIST_NAME_INPUT_2}
    Select Checkbox    ${WISHLIST_CHECKBOX_2}
    Click Button    ${WISHLIST_CREATE_BTN_2}
    Wait Until Element Is Visible    ${WISHLIST_CF_POPUP_2}
    Click Element    ${WISHLIST_CF_POPUP_2}
    Wait Until Element Contains    ${WISHLIST_INFO_2}    ${ACC_PUBLIC_WISHLIST_2}  
    Sleep    5s
    #Delete Wishlist
    Mouse Over    ${WISHLIST_DELETE_2} 
    Click Element    ${WISHLIST_DELETE_2} 
    Sleep    5s
    Click Element    ${WISHLIST_DELETE_CFPOPUP_2}   
    Wait Until Element Is Not Visible    ${WISHLIST_DELETE_CFPOPUP_2}   
    Close Browser

My_Account_TC_6: View Wishlist_Register
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}   
    Execute Javascript    window.scrollTo(0,300)
    Mouse Over     ${PROFILE_BTN_2}  
    Click Element    ${PROFILE_BTN_2} 
    Click Element    ${ACC_MY_WISHLIST_2} 
    Wait Until Page Contains Element    ${MYWISHLIST_TITLE_2} 
    #Create Wishlist 
    Sleep    5s
    Click Element    ${WISHLIST_CREATE_2} 
    Sleep    5s
    Input Text    ${WISHLIST_NAME_2}    ${WISHLIST_NAME_INPUT_2}
    Select Checkbox    ${WISHLIST_CHECKBOX_2}
    Click Button    ${WISHLIST_CREATE_BTN_2}
    Wait Until Element Is Visible    ${WISHLIST_CF_POPUP_2}
    Click Element    ${WISHLIST_CF_POPUP_2}
    #Verify the Created Wishlist Exists
    Wait Until Element Contains    ${ACC_VERIFY_WISHLIST_TXT_2}    ${ACC_WISHLIST_NAME_2} 
    Wait Until Element Contains    ${WISHLIST_INFO_2}    ${ACC_PUBLIC_WISHLIST_2}   
    #Delete Wishlist
    Mouse Over    ${WISHLIST_DELETE_2} 
    Click Element    ${WISHLIST_DELETE_2} 
    Sleep    5s
    Click Element    ${WISHLIST_DELETE_CFPOPUP_2}   
    Wait Until Element Is Not Visible    ${WISHLIST_DELETE_CFPOPUP_2}   
    Close Browser

My_Account_TC_7: Edit Wishlist_Register
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}   
    Execute Javascript    window.scrollTo(0,300)
    Mouse Over     ${PROFILE_BTN_2}  
    Click Element    ${PROFILE_BTN_2} 
    Click Element    ${ACC_MY_WISHLIST_2} 
    Wait Until Page Contains Element    ${MYWISHLIST_TITLE_2}  
    #Create Wishlist 
    Sleep    5s
    Click Element    ${WISHLIST_CREATE_2} 
    Sleep    5s
    Input Text    ${WISHLIST_NAME_2}    ${WISHLIST_NAME_INPUT_2}
    Select Checkbox    ${WISHLIST_CHECKBOX_2}
    Click Button    ${WISHLIST_CREATE_BTN_2}
    Wait Until Element Is Visible    ${WISHLIST_CF_POPUP_2}
    Click Element    ${WISHLIST_CF_POPUP_2}
    #Verify the Created Wishlist Exists
    Wait Until Element Contains    ${ACC_VERIFY_WISHLIST_TXT_2}    ${ACC_WISHLIST_NAME_2}
    Wait Until Element Contains    ${WISHLIST_INFO_2}    ${ACC_PUBLIC_WISHLIST_2} 
    #Edit Wishlist
    Click Element    ${EDIT_WISHLIST_BTN_2}
    Clear Element Text    ${EDIT_WISHLIST_NAME_2} 
    Input Text    ${EDIT_WISHLIST_NAME_2}    ${ACC_WISHLIST_EDIT_NAME_2}   
    Unselect Checkbox   ${WISHLIST_CHECKBOX_2}
    Click Button    ${WISHLIST_SAVE_BTN_2}
    Wait Until Element Is Visible    ${WISHLIST_CF_POPUP_2}
    Click Element    ${WISHLIST_CF_POPUP_2}
    #Verify the Created Wishlist Exists
    Wait Until Element Contains    ${ACC_VERIFY_WISHLIST_TXT_2}    ${ACC_WISHLIST_TITLE_2} 
    Wait Until Element Contains    ${WISHLIST_PRIVATE_TXT_2}    ${ACC_PRIVATE_WISHLIST_2}
    Press Keys    ${WISHLIST_CF_POPUP_2}    ENTER 
    #Delete Wishlist
    Mouse Over    ${WISHLIST_DELETE_2} 
    Click Element    ${WISHLIST_DELETE_2} 
    Sleep    5s
    Click Element    ${WISHLIST_DELETE_CFPOPUP_2}   
    Wait Until Element Is Not Visible    ${WISHLIST_DELETE_CFPOPUP_2}   
    Close Browser

My_Account_TC_8: Delete Wishlist_Register
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}   
    Execute Javascript    window.scrollTo(0,300)
    Mouse Over     ${PROFILE_BTN_2}  
    Click Element    ${PROFILE_BTN_2} 
    Click Element    ${ACC_MY_WISHLIST_2} 
    Wait Until Page Contains Element   ${MYWISHLIST_TITLE_2}
    #Create Wishlist 
    Sleep    5s
    Click Element    ${WISHLIST_CREATE_2} 
    Sleep    5s
    Input Text    ${WISHLIST_NAME_2}    ${WISHLIST_NAME_INPUT_2}
    Select Checkbox    ${WISHLIST_CHECKBOX_2}
    Click Button    ${WISHLIST_CREATE_BTN_2}
    Wait Until Element Is Visible    ${WISHLIST_CF_POPUP_2}
    Click Element    ${WISHLIST_CF_POPUP_2}
    #Verify the Created Wishlist Exists
    Wait Until Element Contains    ${ACC_VERIFY_WISHLIST_TXT_2}    ${ACC_WISHLIST_NAME_2}
    Wait Until Element Contains    ${WISHLIST_INFO_2}    ${ACC_PUBLIC_WISHLIST_2}  
    #Delete Wishlist
    Mouse Over    ${WISHLIST_DELETE_2} 
    Click Element    ${WISHLIST_DELETE_2} 
    Sleep    5s
    Click Element    ${WISHLIST_DELETE_CFPOPUP_2}   
    Wait Until Element Is Not Visible    ${WISHLIST_DELETE_CFPOPUP_2}   
    Close Browser