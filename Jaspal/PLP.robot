*** Settings ***
Library    SeleniumLibrary
Resource    keywords.robot
Resource    variables_locator.robot
Resource    variables_text.robot

*** Test Cases ***  
PLP_TC_1: Apply_Filter_Register
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}   
    Execute Javascript    window.scrollTo(0,300)
    Click Element    ${PLP_DAILY_WEAR_2} 
    Wait Until Element Contains    ${PLP_HEADER_TITLE_2}    ${PLP_HEADER_TXT_2}
    ${PLP_FILTER_PRODUCT_2}=    Get Text    xpath://*[@id="toolbar-amount"] 
    log to console    Show Filter ${PLP_FILTER_PRODUCT_2}
    #Filter On Price
    Click Element   ${PLP_FILTER_2} 
    Drag And Drop By Offset    ${PRICE_SLIDER_2}    0   50
    Click Element    ${PLP_APPLY_FILTER_2}  
    ${PLP_APPLY_FILTER_DAILY_WEAR_2}    Get Text    xpath://*[@id="toolbar-amount"] 
    log to console    Show Filter ${PLP_APPLY_FILTER_DAILY_WEAR_2}
    Click Element   ${PLP_FILTER_2}
    Click Element    ${PLP_RESET_FILTER_2}
    ${PLP_FILTER_PRODUCT_2}=    Get Text    xpath://*[@id="toolbar-amount"] 
    log to console    Show Filter ${PLP_FILTER_PRODUCT_2}
    Click Element    ${PROFILE_BTN_2}  
    Click Element    ${LOGOUT_2}
    Close Browser
    #---------Filter On Size---------
    #Click Element   ${PLP_FILTER_2} 
    #Select Checkbox    ${CLP_FILTER_SMALL} 
    #Click Element    ${PLP_APPLY_FILTER} 
    #${PLP_APPLY_FILTER_DAILY_WEAR_2}    Get Text    xpath://*[@id="toolbar-amount"] 
    #log to console    Show Filter ${PLP_APPLY_FILTER_DAILY_WEAR_2}
    #Click Element   ${PLP_FILTER_2}
    #Click Element    ${PLP_RESET_FILTER}
    #${PLP_APPLY_FILTER_DAILY_WEAR_2}    Get Text    xpath://*[@id="toolbar-amount"] 
    #log to console    Show Filter ${PLP_APPLY_FILTER_DAILY_WEAR_2}
    #Click Element    ${PROFILE_BTN}  
    #Click Element    ${LOGOUT}
    #Close Browser
#-------#Filter On Color------

PLP_TC_2: Sort_Products_Register
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}   
    Execute Javascript    window.scrollTo(0,300)
    Click Element    ${PLP_DAILY_WEAR_2}   
    Wait Until Element Contains    ${PLP_HEADER_TXT_2}    ${PLP_HEADER_TXT_2}
    #Click Element    ${NEWIN_TOPS_CATEGORY_2} 
    ${PLP_FILTER_PRODUCT_2}=    Get Text    xpath://*[@id="toolbar-amount"] 
    log to console    Show Filter ${PLP_FILTER_PRODUCT_2}
    #Sort : Size
    #Click Element    ${PLP_SORT_2}
    #Click Element    ${PLP_SORT_SIZE_2}
    #Wait Until Element Contains    ${PLP_SORT_RESULT_2}    ${PLP_SORT_SIZE_2} 
    #Sleep    3s
    
    #Sort : Most Stocked
    Click Element    ${PLP_SORT_2}
    Execute Javascript    window.scrollTo(0,200)
    Click Element    ${PLP_SORT_MOST_STOCKED_2} 
    Wait Until Element Contains    ${PLP_SORT_2}    ${PLP_SORT_MOST_STOCKED_2}
    Sleep    3s
    #Sort : NEWEST TO OLDEST
    Click Element    ${PLP_SORT_2}
    Execute Javascript    window.scrollTo(0,200)
    Click Element    ${PLP_SORT_NEWEST_TO_OLDEST_2}
    Wait Until Element Contains    ${PLP_SORT_2}    ${PLP_SORT_NEWEST_TO_OLDEST_2}
    Sleep    3s
    #Sort : PRICE: LOW TO HIGH
    Click Element    ${PLP_SORT_2}
    Execute Javascript    window.scrollTo(0,200)
    Click Element    ${PLP_SORT_LOW2HIGH_2} 
    Wait Until Element Contains    ${PLP_SORT_2}    ${PLP_SORT_LOW_TO_HIGH_2}
    Sleep    3s
    #Sort : PRICE: HIGH TO LOW
    Click Element    ${PLP_SORT_2}
    Execute Javascript    window.scrollTo(0,200)
    Click Element    ${PLP_SORT_HIGH2LOW_2}
    Wait Until Element Contains    ${PLP_SORT_2}    ${PLP_SORT_HIGH _TO_LOW_2} 
    Click Element    ${PROFILE_BTN_2}  
    Click Element    ${LOGOUT_2}
    Close Browser

PLP_TC_3: Product Listing Abiity to add product to wishlist_Register
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}   
    Click Element    ${SEARCH_BTN_2}
    Input Text    ${SEARCH_TXT_2}    ${PRODUCT_NAME_2}
    Press Keys    ${PLP_SEARCH_2}    ENTER   
    Wait Until Element Contains    ${PLP_SEARCH_RESULT_2}    ${PLP_SEARCH_RESULT_PRODUCT_2}
    Execute Javascript    window.scrollTo(0,500)
    Mouse Over    ${PLP_PRODUCT_LIST_2}
    Click Element    ${PLP_MOVETO_WL_2}  
    Wait Until Element Is Visible    ${PLP_ITEMLIST_WL_2}     
    Click Element    ${PLP_ITEMLIST_WL_2}                    
    Wait Until Element Contains    ${PLP_POPUPTO_WL_2}    ${PLP_POPUPTO_WL_TXT_2} 
    Click Element    ${PLP_CF_MW_2} 
    Wait Until Element Is Not Visible    ${PLP_POPUPTO_WL_2} 
    Mouse Over     ${PROFILE_BTN_2}   
    Click Element    ${PROFILE_BTN_2} 
    Click Element    ${ACCOUNT_MY_WISHLIST_2}  
    Wait Until Element Contains    ${MY_WISHLIST_TITLE_2}    ${PLP_MY_WISHLIST_TXT_2} 
    Execute Javascript    window.scrollTo(0,200)
    Select Checkbox    ${CHECKBOX_MW_2} 
    Click Element    ${ADD_ALL_TOBAG_MW_2} 
    Wait Until Element Contains    ${PLP_POPUP_TOBAG_MW_2}    ${PLP_POPUP_TOBAG_MW_TXT_2} 
    Sleep    5s
    Click Element    ${PLP_CF_MW_2} 
    Wait Until Element Is Not Visible    ${PLP_POPUP_TOBAG_MW_2}
    Click Element    ${PROFILE_BTN_2}  
    Click Element    ${LOGOUT_2}
    Close Browser

PLP_TC_4: Apply_Filter_Guest
    Open Website
    Accept Cookies
    Execute Javascript    window.scrollTo(0,300)
    Click Element    ${PLP_DAILY_WEAR_2} 
    Wait Until Element Contains    ${PLP_HEADER_TXT_2}    ${PLP_HEADER_TXT_2}
    #Get value    ${PLP_PRODUCT_COUNT_2} 
    log to console    Show Filter ${PLP_FILTER_PRODUCT_2}
    #Filter On Price
    Click Element   ${PLP_FILTER_2} 
    Drag And Drop By Offset    ${PRICE_SLIDER_2}    ${PLP_PRICE_RANGE_A_2}   ${PLP_PRICE_RANGE_B_2}
    Click Element    ${PLP_APPLY_FILTER_2}  
    #Get value    ${PLP_PRODUCT_COUNT_2} 
    log to console    Show Filter ${PLP_APPLY_FILTER_DAILY_WEAR_2}
    Click Element   ${PLP_FILTER_2}
    Click Element    ${PLP_RESET_FILTER_2}
    #Get value    ${PLP_PRODUCT_COUNT_2} 
    log to console    Show Filter ${PLP_FILTER_PRODUCT_2}
    Click Element    ${PROFILE_BTN_2}  
    Click Element    ${LOGOUT_2}
    Close Browser

PLP_TC_5: Sort_Products_Guest
    Open Website
    Accept Cookies
    Execute Javascript    window.scrollTo(0,300)
    Click Element    ${PLP_DAILY_WEAR_2} 
    Wait Until Element Contains    ${PLP_HEADER_TXT_2}    ${PLP_HEADER_TXT_2}
    #Get value    ${PLP_PRODUCT_COUNT_2} 
    log to console    Show Filter ${PLP_FILTER_PRODUCT_2}
    #Sort : Most Stocked
    Click Element    ${PLP_SORT_2}
    Execute Javascript    window.scrollTo(0,200)
    Click Element    ${PLP_SORT_MOST_STOCKED_2} 
    Wait Until Element Contains    ${PLP_SORT_2}    ${PLP_SORT_MOST_STOCKED_2} 
    Sleep    3s
    #Sort : NEWEST TO OLDEST
    Click Element    ${PLP_SORT_2}
    Execute Javascript    window.scrollTo(0,200)
    Click Element    ${PLP_SORT_NEWEST_TO_OLDEST_2}
    Wait Until Element Contains    ${PLP_SORT_2}    ${PLP_SORT_NEWEST_TO_OLDEST_2}
    Sleep    3s
    #Sort : PRICE: LOW TO HIGH
    Click Element    ${PLP_SORT_2}
    Execute Javascript    window.scrollTo(0,200)
    Click Element    ${PLP_SORT_LOW2HIGH_2} 
    Wait Until Element Contains    ${PLP_SORT_LOW_TO_HIGH_2}    ${PLP_SORT_LOW_TO_HIGH_2}
    Sleep    3s
    #Sort : PRICE: HIGH TO LOW
    Click Element    ${PLP_SORT_2}
    Execute Javascript    window.scrollTo(0,200)
    Click Element    ${PLP_SORT_HIGH2LOW_2}
    Wait Until Element Contains    ${PLP_SORT_2}    ${PLP_SORT_HIGH _TO_LOW_2}
    Click Element    ${PROFILE_BTN_2}  
    Click Element    ${LOGOUT_2}
    Close Browser
   
 