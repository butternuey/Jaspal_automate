*** Settings ***
Library    SeleniumLibrary
Resource    keywords.robot
Resource    variables_text.robot
Resource    variables_locator.robot

*** Test Cases ***  

PDP_TC_1: Verify Size And Quantity Is Mandatory_Guest
    Open Website
    Accept Cookies
    Click Element    ${SEARCH_BTN_2}
    Input Text    ${SEARCH_TXT_2}    ${PRODUCT_1}
    Click Element    ${SEARCH_RESULT_2}
    Wait Until Page Contains Element   ${RESULT_PRODUCT_2}   
    Execute Javascript    window.scrollTo(0,300)
    Click Element     ${MYNX_LOVE_TEE_2}
    Wait Until Element Contains    ${PDP_RESULT_MYNX_LOVE_TEE_2}    ${PRODUCT_1}
    Execute Javascript    window.scrollTo(0,3200)
    Wait Until Element Is Visible    ${PDP_ADDTOBAG_BTN_2}   
    Click Element    ${PDP_ADDTOBAG_BTN_2}
    Wait Until Element Contains    ${PDP_COLOR_ERROR_MSG_2}     ${PDP_COLOR_ERROR_TXT_2} 
    Wait Until Element Contains    ${PDP_SIZE_ERROR_MSG_2}    ${PDP_COLOR_ERROR_TXT_2} 
    Close Browser

PDP_TC_2: Verify Size And Quantity Is Mandatory_Register
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}   
    Click Element    ${SEARCH_BTN_2}
    Input Text    ${SEARCH_TXT_2}    ${PRODUCT_1}
    Click Element    ${SEARCH_RESULT_2}
    Wait Until Page Contains Element   ${RESULT_PRODUCT_2}    
    Execute Javascript    window.scrollTo(0,300)
    Sleep    3s
    Click Element     ${MYNX_LOVE_TEE_2}
    Wait Until Element Contains    ${PDP_RESULT_MYNX_LOVE_TEE_2}    ${PRODUCT_1}
    Execute Javascript    window.scrollTo(0,3200)
    Wait Until Element Is Visible    ${PDP_ADDTOBAG_BTN_2}   
    Click Element    ${PDP_ADDTOBAG_BTN_2}
    Wait Until Element Contains    ${PDP_COLOR_ERROR_MSG_2}     ${PDP_COLOR_ERROR_TXT_2} 
    Wait Until Element Contains    ${PDP_SIZE_ERROR_MSG_2}    ${PDP_COLOR_ERROR_TXT_2}   
    Click Element    ${PROFILE_BTN_2}  
    Click Element    ${LOGOUT_2}
    Close Browser

PDP_TC_3: Able To Increase And Decrease Quantity_Guest
    Open Website
    Accept Cookies
    Click Element    ${SEARCH_BTN_2}
    Input Text    ${SEARCH_TXT_2}    ${PRODUCT_1}
    Click Element    ${SEARCH_RESULT_2}
    Wait Until Page Contains Element   ${RESULT_PRODUCT_2}    
    Execute Javascript    window.scrollTo(0,300)
    Click Element    ${MYNX_LOVE_TEE_2} 
    Wait Until Element Contains    ${PDP_RESULT_MYNX_LOVE_TEE_2}    ${PRODUCT_1}
    Click Element    ${PDP_INCREASE_QTY_2}
    Sleep    2s
    Click Element    ${PDP_DECREASE_QTY_2} 
    Close Browser

PDP_TC_4: Able To Increase And Decrease Quantity_Register
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}   
    Click Element    ${SEARCH_BTN_2}
    Input Text    ${SEARCH_TXT_2}    ${PRODUCT_1}
    Click Element    ${SEARCH_RESULT_2}
    Wait Until Page Contains Element   ${RESULT_PRODUCT_2}    
    Execute Javascript    window.scrollTo(0,300)
    Click Element    ${MYNX_LOVE_TEE_2} 
    Wait Until Element Contains    ${PDP_RESULT_MYNX_LOVE_TEE_2}    ${PRODUCT_1}
    Click Element    ${PDP_INCREASE_QTY_2}
    Sleep    2s
    Click Element    ${PDP_DECREASE_QTY_2} 
    Click Element    ${PROFILE_BTN_2}  
    Click Element    ${LOGOUT_2}
    Close Browser

PDP_TC_5: Verify Max And Min Quantity Product Limit Error Message _Guest
    Open Website
    Accept Cookies
    Click Element    ${SEARCH_BTN_2}
    Input Text    ${SEARCH_TXT_2}    ${PRODUCT_1}
    Click Element    ${SEARCH_RESULT_2}
    Wait Until Page Contains Element   ${RESULT_PRODUCT_2}    
    Execute Javascript    window.scrollTo(0,300)
    Click Element    ${MYNX_LOVE_TEE_2} 
    Wait Until Element Contains    ${PDP_RESULT_MYNX_LOVE_TEE_2}    ${PRODUCT_1}
    #Input min qty
    Click Element   ${PDP_PRODUCT_COUNT_2}
    Press Keys    ${PDP_PRODUCT_COUNT_2}    DELETE    
    Input Text    ${PDP_PRODUCT_COUNT_2}    ${PDP_MIN_QTY_2}
    Sleep    5s
    Press Keys    ${PDP_PRODUCT_COUNT_2}    ENTER     
    Wait Until Element Contains   ${PDP_ZERO_QTY_MSG_2}    ${PDP_ZERO_QTY_TXT_2}
    Sleep    2s
    Click Element    ${PDP_OK_BTN_2}
    Wait Until Element Is Not Visible    ${PDP_ZERO_QTY_MSG_2}
    #Input max qty
    Click Element   ${PDP_PRODUCT_COUNT_2}
    Press Keys    ${PDP_PRODUCT_COUNT_2}    DELETE    
    Input Text    ${PDP_PRODUCT_COUNT_2}    ${PDP_MAX_QTY_2}
    Press Keys    ${PDP_PRODUCT_COUNT_2}    ENTER     
    Wait Until Element Contains    ${PDP_POPUP_ERROR_MAX_2}    ${PDP_POPUP_ERROR_MAX_TXT_2}
    Sleep    2s   
    Click Element    ${PDP_OK_BTN_2}
    Wait Until Element Is Not Visible    ${PDP_POPUP_ERROR_MAX_2}
    Close Browser

PDP_TC_6: Verify Max And Min Quantity Product Limit Error Message _Register
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}   
    Click Element    ${SEARCH_BTN_2}
    Sleep    2s
    Input Text    ${SEARCH_TXT_2}    ${PRODUCT_1}
    Click Element    ${SEARCH_RESULT_2}
    Wait Until Page Contains Element   ${RESULT_PRODUCT_2}   
    Execute Javascript    window.scrollTo(0,300)
    Click Element    ${MYNX_LOVE_TEE_2} 
    Wait Until Element Contains    ${PDP_RESULT_MYNX_LOVE_TEE_2}    ${PRODUCT_1}
    #Input min qty
    Click Element   ${PDP_PRODUCT_COUNT_2}
    Press Keys    ${PDP_PRODUCT_COUNT_2}    DELETE    
    Input Text    ${PDP_PRODUCT_COUNT_2}    ${PDP_MIN_QTY_2}
    Sleep    5s
    Press Keys    ${PDP_PRODUCT_COUNT_2}    ENTER
    Sleep    2s
    Wait Until Element Contains   ${PDP_ZERO_QTY_MSG_2}    ${PDP_ZERO_QTY_TXT_2}
    Sleep    2s
    Click Element    ${PDP_OK_BTN_2}
    Wait Until Element Is Not Visible    ${PDP_ZERO_QTY_MSG_2}
    #Input max qty
    Click Element   ${PDP_PRODUCT_COUNT_2}
    Press Keys    ${PDP_PRODUCT_COUNT_2}    DELETE    
    Input Text    ${PDP_PRODUCT_COUNT_2}    ${PDP_MAX_QTY_2}
    Press Keys    ${PDP_PRODUCT_COUNT_2}    ENTER     
    Wait Until Element Contains    ${PDP_POPUP_ERROR_MAX_2}    ${PDP_POPUP_ERROR_MAX_TXT_2} 
    Sleep    2s   
    Click Element    ${PDP_OK_BTN_2}
    Wait Until Element Is Not Visible    ${PDP_POPUP_ERROR_MAX_2}
    Click Element    ${PROFILE_BTN_2}  
    Click Element    ${LOGOUT_2}
    Close Browser

PDP_TC_7: Add Product Using Favourite Icon_Registered
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}
    Wait Until Page Does Not Contain Element    ${LOGIN_POPUP}
    Click Element    ${SEARCH_BTN_2}
    Sleep    2s
    Input Text    ${SEARCH_TXT_2}    ${PRODUCT_1}
    Click Element    ${SEARCH_RESULT_2}
    Wait Until Page Contains Element   ${RESULT_PRODUCT_2}   
    Execute Javascript    window.scrollTo(0,300)
    Click Element    ${MYNX_LOVE_TEE_2} 
    Wait Until Element Contains    ${PDP_RESULT_MYNX_LOVE_TEE_2}    ${PRODUCT_1}
    Execute Javascript    window.scrollTo(0,3200)
    Wait Until Element Is Visible    ${PDP_REG_USER_FAV_2}
    Sleep    5s
    Click Element    ${PDP_REG_USER_FAV_2}
    Sleep    3s
    Wait Until Element Contains    ${PDP_FAV_ITEMLIST_2}    ${PDP_FAV_ITEMLIST_TXT_2}   
    Click Element    ${PDP_FAV_ITEMLIST_2} 
    Wait Until Element Contains    ${PLP_POPUPTO_WL_2}    ${PDP_POPUPTO_WL_TXT_2}
    Click Element    ${PLP_CF_MW_2} 
    Wait Until Element Is Not Visible    ${PLP_POPUPTO_WL_2} 
    Mouse Over     ${PROFILE_BTN_2}   
    Click Element    ${PROFILE_BTN_2} 
    Click Element    ${ACCOUNT_MY_WISHLIST_2}  
    Wait Until Element Contains    ${MY_WISHLIST_TITLE_2}    ${PDP_MY_WISHLIST_TITLE_2}  
    Execute Javascript    window.scrollTo(0,200)
    Select Checkbox    ${CHECKBOX_MW_2} 
    Click Element    ${ADD_ALL_TOBAG_MW_2} 
    Wait Until Element Contains    ${PDP_WLPOPUP_2}    ${PDP_WLPOPUP_TXT_2}  
    Click Element    ${PLP_CF_MW_2} 
    Wait Until Element Is Not Visible    ${PLP_POPUP_TOBAG_MW_2}
    Click Element    ${PROFILE_BTN_2}  
    Click Element    ${LOGOUT_2}
    Close Browser

PDP_TC_8: Add Product Using Favourite Icon_Guest
    Open Website
    Accept Cookies
    Click Element    ${SEARCH_BTN_2}
    Sleep    2s
    Input Text    ${SEARCH_TXT_2}    ${PRODUCT_1}
    Click Element    ${SEARCH_RESULT_2}
    Wait Until Page Contains Element   ${RESULT_PRODUCT_2}  
    Execute Javascript    window.scrollTo(0,300)
    Click Element    ${MYNX_LOVE_TEE_2} 
    Wait Until Element Contains    ${PDP_RESULT_MYNX_LOVE_TEE_2}    ${PRODUCT_1}
    Execute Javascript    window.scrollTo(0,3200)
    Wait Until Element Is Visible    ${PDP_GUEST_USER_FAV_2} 
    Sleep    5s
    Click Element    ${PDP_GUEST_USER_FAV_2} 
    Wait Until Element Contains    ${LOGIN_POPUP}    LOG IN
    Click Element    ${LOGIN_EMAIL_TEXTBOX}
    Input Text    ${LOGIN_EMAIL_TEXTBOX}        ${LOGIN_EMAIL}
    Click Element    ${LOGIN_PASSWORD_TEXTBOX}
    Input Text    ${LOGIN_PASSWORD_TEXTBOX}    ${LOGIN_PASSWORD}
    Sleep    2s
    Click Element    ${LOGIN_BUTTON}
    Execute Javascript    window.scrollTo(0, document.body.scrollTop)
    Wait Until Element Contains    ${PDP_RESULT_MYNX_LOVE_TEE_2}    ${PRODUCT_1}
    Sleep    2s
    Execute Javascript    window.scrollTo(0,3200)
    Wait Until Element Is Visible    ${PDP_REG_USER_FAV_2} 
    Sleep    5s
    Click Element    ${PDP_REG_USER_FAV_2} 
    Wait Until Element Contains    ${PDP_FAV_ITEMLIST_2}    ${PDP_FAV_ITEMLIST_TXT_2}
    Click Element    ${PDP_FAV_ITEMLIST_2} 
    Wait Until Element Contains    ${PLP_POPUPTO_WL_2}    ${PDP_POPUPTO_WL_TXT_2}
    Click Element    ${PLP_CF_MW_2} 
    Wait Until Element Is Not Visible    ${PLP_POPUPTO_WL_2} 
    Mouse Over     ${PROFILE_BTN_2}   
    Click Element    ${PROFILE_BTN_2} 
    Click Element    ${ACCOUNT_MY_WISHLIST_2}  
    Wait Until Element Contains    ${MY_WISHLIST_TITLE_2}    ${PDP_MY_WISHLIST_TITLE_2} 
    Execute Javascript    window.scrollTo(0,200)
    Select Checkbox    ${CHECKBOX_MW_2} 
    Click Element    ${ADD_ALL_TOBAG_MW_2} 
    Wait Until Element Contains    ${PDP_WLPOPUP_2}    ${PDP_WLPOPUP_TXT_2}
    Click Element    ${PLP_CF_MW_2} 
    Wait Until Element Is Not Visible    ${PLP_POPUP_TOBAG_MW_2}
    Click Element    ${PROFILE_BTN_2}  
    Click Element    ${LOGOUT_2}
    Close Browser








