*** Settings ***
Library    SeleniumLibrary
Resource   keywords.robot
Resource    variables_locator.robot
Resource    variables_text.robot

*** Test Cases ***
Global Footer_TC_1: Verify Footer Lables_Guest.
    Open Website
    Accept Cookies
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_MY_ACCOUNT_MY_ORDERS}
    #Click on My Order in footer
    Click Element    ${FOOTER_MY_ACCOUNT_MY_ORDERS}
    #Verify Bread Crumb
    Wait Until Element Contains    ${FOOTER_BREADCRUMBS}    ${BREADCRUMBS_ORDER_INFORMATION}    
    #Click the MM logo
    Click Element    ${WEB_LOGO}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_MY_ACCOUNT_MY_CREDITS}
    #Click on MY_CREDITS in footer
    Click Element    ${FOOTER_MY_ACCOUNT_MY_CREDITS}
    #Verify Login Popup
    Wait Until Page Contains Element    ${LOGIN_POPUP}
    #Close Popup
    Click Element    ${LOGIN_CLOSE_POPUP_BUTTON}
    Wait Until Element Is Not Visible    ${LOGIN_POPUP}
    #Click the MM logo
    Sleep    1s
    Click Element    ${WEB_LOGO}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_ABOUT_US_WHO_WE_ARE}
    #Click on who we are in footer
    Click Element    ${FOOTER_ABOUT_US_WHO_WE_ARE}    
    #Verify Bread Crumb
    Wait Until Element Contains    ${FOOTER_BREADCRUMBS}    ${BREADCRUMBS_OUR_STORY}            
    #Click the MM logo
    Click Element    ${WEB_LOGO}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_ABOUT_US_WORK_WITH_US}
    # #Click on who we are in footer
    # Click Element    ${FOOTER_ABOUT_US_WORK_WITH_US}
    # #Verify WORK_WITH_US page--> BUG 
    # Wait Until Element Contains    ${FOOTER_BREADCRUMBS}    ${BREADCRUMBS_WORK_WITH_US}  
    # #Click the MM logo
    # Click Element    ${WEB_LOGO_MM}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_ABOUT_US_JASPAL_GROUP}
    #Click on JASPAL_GROUP in footer
    Click Element    ${FOOTER_ABOUT_US_JASPAL_GROUP}    
    #Wait and switch to the new tab
    ${WINDOW_HANDLES}=    Get Window Handles
    Switch Window    ${WINDOW_HANDLES}[1]
    #Verify JASPAL GROUP Page in new tab
    Page Should Contain    ${JASPAL_GROUP}
    #Close the new tab
    Close Window
    #Wait and switch to the old tab
    ${WINDOW_HANDLES}=    Get Window Handles
    Switch Window    ${WINDOW_HANDLES}[0]
    #Verify JASPAL GROUP Page in new tab
    Page Should Contain Element    ${WEB_LOGO}
    #Click the MM logo
    Click Element    ${WEB_LOGO}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_ABOUT_US_JPS_CLUB}
    #Click on JPS_CLUB in footer
    Click Element    ${FOOTER_ABOUT_US_JPS_CLUB}    
    #Wait and switch to the new tab
    ${WINDOW_HANDLES}=    Get Window Handles
    Switch Window    ${WINDOW_HANDLES}[1]
    #Verify JPS_CLUB Page in new tab
    Sleep    3s
    Page Should Contain Element    ${FOOTER_JPS_CLUB_ICON}
    #Wait and switch to the old tab
    ${WINDOW_HANDLES}=    Get Window Handles
    Switch Window    ${WINDOW_HANDLES}[0]
    #Verify JPS_CLUB  Page in new tab
    Page Should Contain Element    ${WEB_LOGO}          
    #Click the MM logo
    Click Element    ${WEB_LOGO}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_CUSTOMER_SERVICE_FAQS}
    #Click on FAQS in footer
    Click Element    ${FOOTER_CUSTOMER_SERVICE_FAQS}    
    #Verify Bread Crumb
    Wait Until Element Contains    ${FOOTER_BREADCRUMBS_FAQ}    ${BREADCRUMBS_FAQ}  
    #Click the MM logo
    Click Element    ${WEB_LOGO}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_CUSTOMER_SERVICE_FIND_A_STORE}
    #Click on FIND_A_STORE in footer
    Click Element    ${FOOTER_CUSTOMER_SERVICE_FIND_A_STORE}
    Sleep    2s    
    Wait Until Page Contains    ${STORE_LOCATOR}           
    #Click the MM logo
    Click Element    ${WEB_LOGO}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_CUSTOMER_SERVICE_RETURN_&_EXCHANGES}
    #Click on RETURN_&_EXCHANGES in footer
    Click Element    ${FOOTER_CUSTOMER_SERVICE_RETURN_&_EXCHANGES}    
    #Verify Bread Crumb
    Wait Until Element Contains    ${FOOTER_BREADCRUMBS}    ${BREADCRUMBS_EXCHANGE}           
    #Click the MM logo
    Click Element    ${WEB_LOGO}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_CUSTOMER_SERVICE_CONTACT_US}
    #Click on CONTACT_US in footer
    Click Element    ${FOOTER_CUSTOMER_SERVICE_CONTACT_US}    
    #Verify Bread Crumb
    Wait Until Element Contains    ${FOOTER_BREADCRUMBS_CONTACT_US}    ${BREADCRUMBS_CONTACT_US}           
    #Click the MM logo
    Click Element    ${WEB_LOGO}
    Delete All Cookies
    Close Browser

Global Footer_TC_2: Verify Footer Lables_Register.
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL_EXISTING_CUSTOMER}      ${LOGIN_PASSWORD_EXISTING_CUSTOMER}
    Sleep    1s
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_MY_ACCOUNT_MY_ORDERS}
    #Click on My Order in footer
    Sleep    2s
    Click Element    ${FOOTER_MY_ACCOUNT_MY_ORDERS}
    #Verify Bread Crumb
    Wait Until Page Contains    ${MY_ORDERS}
    #Click the MM logo
    Click Element    ${WEB_LOGO}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_MY_ACCOUNT_MY_CREDITS}
    #Click on MY_CREDITS in footer
    Click Element    ${FOOTER_MY_ACCOUNT_MY_CREDITS}
    #Verify ONLINE CREDITS
    Sleep    2s
    Wait Until Page Contains    ${ONLINE_CREDITS}
    #Click the MM logo
    Sleep    1s
    Click Element    ${WEB_LOGO}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_ABOUT_US_WHO_WE_ARE}
    #Click on who we are in footer
    Click Element    ${FOOTER_ABOUT_US_WHO_WE_ARE}    
    #Verify Bread Crumb
    Wait Until Element Contains    ${FOOTER_BREADCRUMBS}    ${BREADCRUMBS_OUR_STORY}            
    #Click the MM logo
    Click Element    ${WEB_LOGO}
    # #Scroll down to bottom of page
    # Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    # Wait Until Page Contains Element    ${FOOTER_ABOUT_US_WORK_WITH_US}
    # #Click on who we are in footer
    # Click Element    ${FOOTER_ABOUT_US_WORK_WITH_US}
    # #Verify WORK_WITH_US page--> BUG 
    # Wait Until Element Contains    ${FOOTER_BREADCRUMBS}    ${BREADCRUMBS_WORK_WITH_US}  
    # #Click the MM logo
    # Click Element    ${WEB_LOGO}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_ABOUT_US_JASPAL_GROUP}
    #Click on JASPAL_GROUP in footer
    Click Element    ${FOOTER_ABOUT_US_JASPAL_GROUP}    
    #Wait and switch to the new tab
    ${WINDOW_HANDLES}=    Get Window Handles
    Switch Window    ${WINDOW_HANDLES}[1]
    #Verify JASPAL GROUP Page in new tab
    Page Should Contain    ${JASPAL_GROUP}
    #Close the new tab
    Close Window
    #Wait and switch to the old tab
    ${WINDOW_HANDLES}=    Get Window Handles
    Switch Window    ${WINDOW_HANDLES}[0]
    #Verify JASPAL GROUP Page in new tab
    Page Should Contain Element    ${WEB_LOGO}
    #Click the MM logo
    Click Element    ${WEB_LOGO}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_ABOUT_US_JPS_CLUB}
    #Click on JPS_CLUB in footer
    Click Element    ${FOOTER_ABOUT_US_JPS_CLUB}    
    #Wait and switch to the new tab
    ${WINDOW_HANDLES}=    Get Window Handles
    Switch Window    ${WINDOW_HANDLES}[1]
    #Verify JPS_CLUB Page in new tab
    Sleep    3s
    Page Should Contain Element    ${FOOTER_JPS_CLUB_ICON}
    #Wait and switch to the old tab
    ${WINDOW_HANDLES}=    Get Window Handles
    Switch Window    ${WINDOW_HANDLES}[0]
    #Verify JPS_CLUB  Page in new tab
    Page Should Contain Element    ${WEB_LOGO}          
    #Click the MM logo
    Click Element    ${WEB_LOGO}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_CUSTOMER_SERVICE_FAQS}
    #Click on FAQS in footer
    Click Element    ${FOOTER_CUSTOMER_SERVICE_FAQS}    
    #Verify Bread Crumb
    Wait Until Element Contains    ${FOOTER_BREADCRUMBS_FAQ}    ${BREADCRUMBS_FAQ}  
    #Click the MM logo
    Click Element    ${WEB_LOGO}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_CUSTOMER_SERVICE_FIND_A_STORE}
    #Click on FIND_A_STORE in footer
    Click Element    ${FOOTER_CUSTOMER_SERVICE_FIND_A_STORE}    
    Wait Until Page Contains    ${STORE_LOCATOR}           
    #Click the MM logo
    Click Element    ${WEB_LOGO}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_CUSTOMER_SERVICE_RETURN_&_EXCHANGES}
    #Click on RETURN_&_EXCHANGES in footer
    Click Element    ${FOOTER_CUSTOMER_SERVICE_RETURN_&_EXCHANGES}    
    #Verify Bread Crumb
    Wait Until Element Contains    ${FOOTER_BREADCRUMBS}    ${BREADCRUMBS_EXCHANGE}           
    #Click the MM logo
    Click Element    ${WEB_LOGO}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_CUSTOMER_SERVICE_CONTACT_US}
    #Click on CONTACT_US in footer
    Click Element    ${FOOTER_CUSTOMER_SERVICE_CONTACT_US}    
    #Verify Bread Crumb
    Wait Until Element Contains    ${FOOTER_BREADCRUMBS_CONTACT_US}    ${BREADCRUMBS_CONTACT_US}           
    #Click the MM logo
    Click Element    ${WEB_LOGO}
    Delete All Cookies
    Close Browser

Global Footer_TC_3: Verify Various Social Media Options_Guest
    Open Website
    Accept Cookies
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    #Verify Facebook Icon
    Wait Until Page Contains Element    ${FOOTER_SOCIAL_FACEBOOK_ICON}
    #Verify Instragram Icon
    Wait Until Page Contains Element    ${FOOTER_SOCIAL_IG_ICON}
    #Verify Line Icon
    Wait Until Page Contains Element    ${FOOTER_SOCIAL_LINE_ICON}
    #Verify Youtube Icon
    Wait Until Page Contains Element    ${FOOTER_SOCIAL_YOUTUBE_ICON}
    #Verify Pinterest Icon
    Wait Until Page Contains Element    ${FOOTER_SOCIAL_PINTEREST_ICON}
    #Verify Twitter Icon
    Wait Until Page Contains Element    ${FOOTER_SOCIAL_TWITTER_ICON}
    Delete All Cookies
    Close Browser

Global Footer_TC_4: Verify Various Social Media Options_Register
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL_EXISTING_CUSTOMER}      ${LOGIN_PASSWORD_EXISTING_CUSTOMER}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    #Verify Facebook Icon
    Wait Until Page Contains Element    ${FOOTER_SOCIAL_FACEBOOK_ICON}
    #Verify Instragram Icon
    Wait Until Page Contains Element    ${FOOTER_SOCIAL_IG_ICON}
    #Verify Line Icon
    Wait Until Page Contains Element    ${FOOTER_SOCIAL_LINE_ICON}
    #Verify Youtube Icon
    Wait Until Page Contains Element    ${FOOTER_SOCIAL_YOUTUBE_ICON}
    #Verify Pinterest Icon
    Wait Until Page Contains Element    ${FOOTER_SOCIAL_PINTEREST_ICON}
    #Verify Twitter Icon
    Wait Until Page Contains Element    ${FOOTER_SOCIAL_TWITTER_ICON}
    Wait Until Page Contains Element    ${HOMEPAGE_SCROLL_TO_TOP_BUTTON}
    Click Element    ${HOMEPAGE_SCROLL_TO_TOP_BUTTON}
    Wait Until Page Contains Element    ${WEB_LOGO}
    Logout
    Delete All Cookies
    Close Browser

Global Footer_TC_5: Newsletter Subcription_Guest
    Open Website
    Accept Cookies
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    #Verify the JOIN_THE_JASPAL_COMMUNITY
    Wait Until Page Contains Element    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY}
    #Validate the PDPA Message
    Wait Until Page Contains Element    ${FOOTER_PDPA_TEXT}
    #Input email 
    Input Text    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_ENTER_EMAIL}   ${JASPAL_COMMUNITY_ENTER_EMAIL}
    #Click the enter button to subscribe the newspaper
    Click Element    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_ENTER_EMAIL_ARROW}
    #Verify the Error Message to select Privacy Policy
    Wait Until Element Contains    ${FOOTER_PDPA_ERROR}    ${FOOTER_PDPA_ERROR_TEXT}
    #Select PDPA checkbox
    Click Element    ${FOOTER_PDPA_CHECKBOX}
    #Click the enter button to subscribe the newspaper
    Click Element    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_ENTER_EMAIL_ARROW}
    #Verify success message
    Wait Until Element Contains    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_SUCCESS_POPUP}    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_SUCCESS_MESSAGE}
    #Click on ok button on popup
    Click Element    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_SUCCESS_POPUP_OK_BUTTON}
    Wait Until Element Is Not Visible    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_SUCCESS_POPUP}
    Delete All Cookies
    Close Browser

Global Footer_TC_6: Newsletter Subcription_Register
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL_EXISTING_CUSTOMER}      ${LOGIN_PASSWORD_EXISTING_CUSTOMER}
    Sleep    1s
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    #Verify the JOIN_THE_JASPAL_COMMUNITY
    Wait Until Page Contains Element    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY}
    #Validate the PDPA Message
    Wait Until Page Contains Element    ${FOOTER_PDPA_TEXT}
    #Input email (Have to change email that have never subscripted before. If you want to use the same email you will run unsubscript feature.)
    Input Text    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_ENTER_EMAIL}    ${JASPAL_COMMUNITY_ENTER_EMAIL_1}   
    #Click the enter button to subscribe the newspaper
    Click Element    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_ENTER_EMAIL_ARROW}
    #Verify the Error Message to select Privacy Policy
    Wait Until Element Contains    ${FOOTER_PDPA_ERROR}    ${FOOTER_PDPA_ERROR_TEXT}
    #Select PDPA checkbox
    Click Element    ${FOOTER_PDPA_CHECKBOX}
    #Click the enter button to subscribe the newspaper
    Click Element    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_ENTER_EMAIL_ARROW}
    #Verify success message
    Wait Until Element Contains   ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_SUCCESS_POPUP}    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_SUCCESS_MESSAGE}
    #Click on ok button on popup
    Click Element    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_SUCCESS_POPUP_OK_BUTTON}
    #Go to header
    Wait Until Element Is Not Visible    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_SUCCESS_POPUP}
    Wait Until Page Contains Element    ${WEB_LOGO}
    Sleep    1s
    Logout
    Delete All Cookies
    Close Browser

Global Footer_TC_7: My Order Search_Footer_GuestUser
    Open Website
    Accept Cookies
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    #Click on My Order in footer
    Wait Until Page Contains Element    ${FOOTER_MY_ACCOUNT_MY_ORDERS}
    Sleep    1s
    Click Element    ${FOOTER_MY_ACCOUNT_MY_ORDERS}
    #Verify Bread Crumb
    Wait Until Element Contains    ${FOOTER_BREADCRUMBS}    ${BREADCRUMBS_ORDER_INFORMATION}
    #Verify Order Reference Number field
    Wait Until Page Contains    ${ORDER_REFERENCE_NUMBER}
    Sleep    2s
    #Enter Order Reference Number (Can checkout with Checkout_TC_1 before run this case because it have Order number and email)
    Input Text    ${MY_ORDER_GUEST_ORDER_REFERENCE_NUMBER_FIELD}    ${GUEST_ORDER_REFERENCE_NUMBER}  
    #Verify Email Address field
    Wait Until Page Contains    ${ORDER_EMAIL_ADDRESS}
    #Enter Email Address
    Input Text    ${MY_ORDER_GUEST_EMAIL_ADDRESS_FIELD}    ${MY_ORDER_GUEST_EMAIL_ADDRESS_DATA}
    #Verify Billing Last Name field
    Wait Until Page Contains    ${MY_ORDER_GUEST_BILLING_LAST_NAME}
    #Enter Billing Last Name
    Input Text    ${MY_ORDER_GUEST_BILLING_LAST_NAME_FIELD}    ${MY_ORDER_GUEST_BILLING_LAST_NAME_DATA}
    #Click on the search button
    Click Element    ${MY_ORDER_GUEST_SEARCH_BUTTON}
    #Verify the My order page is displayed
    Sleep    1s
    Wait Until Page Contains Element    ${ORDER_INFO_GUEST_ORDER_REFERENCE}
    Sleep    1s
    ${GUEST_ORDER_REFERENCE}    Get Text    ${ORDER_INFO_GUEST_ORDER_REFERENCE_VALUE}
    Log To Console    ORDER REFERENCE : ${GUEST_ORDER_REFERENCE}
    Sleep    2s
    Delete All Cookies
    Close Browser

Global Footer_TC_8: Verify Mandatory Fields_My Order Search_Footer_GuestUser.
    Open Website
    Accept Cookies
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    #Click on My Order in footer
    Wait Until Page Contains Element    ${FOOTER_MY_ACCOUNT_MY_ORDERS}
    Sleep    1s
    Click Element    ${FOOTER_MY_ACCOUNT_MY_ORDERS}
    #Verify Bread Crumb
    Wait Until Element Contains    ${FOOTER_BREADCRUMBS}    ${BREADCRUMBS_ORDER_INFORMATION}
    #Verify Order Reference Number field
    Wait Until Page Contains    ${ORDER_REFERENCE_NUMBER}
    Sleep    2s
    #Enter Order Reference Number (Can checkout with Checkout_TC_1 before run this case because it have Order number and email)
    Input Text    ${MY_ORDER_GUEST_ORDER_REFERENCE_NUMBER_FIELD}    ${EMPTY}  
    #Verify Email Address field
    Wait Until Page Contains    ${ORDER_EMAIL_ADDRESS}
    Sleep    2s
    #Enter Email Address
    Input Text    ${MY_ORDER_GUEST_EMAIL_ADDRESS_FIELD}    ${EMPTY}
    #Verify Billing Last Name field
    Wait Until Page Contains    ${MY_ORDER_GUEST_BILLING_LAST_NAME}
    #Enter Billing Last Name
    Input Text    ${MY_ORDER_GUEST_BILLING_LAST_NAME_FIELD}    ${EMPTY}
    #Click on the search button
    Click Element    ${MY_ORDER_GUEST_SEARCH_BUTTON}
    #Verify Order Reference Number field As Mandatory
    Wait Until Element Contains    ${MY_ORDER_GUEST_ORDER_REFERENCE_NUMBER_ERROR}    ${GUEST_ORDER_REFERENCE_NUMBER_ERROR_TEXT}
    Sleep    1s
    #Verify Email Address field As Mandatory
    Wait Until Element Contains    ${MY_ORDER_GUEST_EMAIL_ADDRESS_ERROR}    ${GUEST_EMAIL_ADDRESS_ERROR_TEXT}
    #Verify Billing Last Name field As Mandatory
    Sleep    2s
    Wait Until Element Contains    ${MY_ORDER_GUEST_BILLING_LAST_NAME_ERROR}    ${GUEST_BILLING_LAST_NAME_ERROR_TEXT}
    Sleep    2s
    Delete All Cookies
    Close Browser

Global Footer_TC_9: Verify Email As Mandatory in Newsletter Subcription_Guest.
    Open Website
    Accept Cookies
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    #Verify the JOIN_THE_JASPAL_COMMUNITY
    Wait Until Page Contains Element    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY}
    #Select PDPA checkbox
    Click Element    ${FOOTER_PDPA_CHECKBOX}
    #Input email 
    Input Text    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_ENTER_EMAIL}    ${EMPTY}
    #Click subscribe the newspaper
    Click Element    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_ENTER_EMAIL_ARROW}
    #Verify the Error Message to enter the email
    Wait Until Element Contains    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_ENTER_EMAIL_ERROR}    ${ENTER_EMAIL_EMPTY_ERROR}
    Sleep    1s
    Delete All Cookies
    Close Browser

Global Footer_TC_10: Verify Email As Mandatory in Newsletter Subcription_Register.
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL_EXISTING_CUSTOMER}      ${LOGIN_PASSWORD_EXISTING_CUSTOMER}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    #Verify the JOIN_THE_JASPAL_COMMUNITY
    Wait Until Page Contains Element    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY}
    #Select PDPA checkbox
    Click Element    ${FOOTER_PDPA_CHECKBOX}
    #Input email 
    Input Text    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_ENTER_EMAIL}    ${EMPTY}
    #Click subscribe the newspaper
    Click Element    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_ENTER_EMAIL_ARROW}
    #Verify the Error Message to enter the email
    Wait Until Element Contains    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_ENTER_EMAIL_ERROR}    ${ENTER_EMAIL_EMPTY_ERROR}
    Sleep    1s
    #Go to header
    Wait Until Page Contains Element    ${WEB_LOGO}
    Sleep    1s
    Logout
    Delete All Cookies
    Close Browser

Global Footer_TC_11: Verify Valid EmailID in Newsletter Subcription_Guest.
    Open Website
    Accept Cookies
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    #Verify the JOIN_THE_JASPAL_COMMUNITY
    Wait Until Page Contains Element    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY}
    #Select PDPA checkbox
    Click Element    ${FOOTER_PDPA_CHECKBOX}
    #Input email 
    Input Text    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_ENTER_EMAIL}    ${JASPAL_COMMUNITY_ENTER_EMAIL_INVALID}    
    #Click subscribe the newspaper
    Click Element    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_ENTER_EMAIL_ARROW}
    #Verify the Error Message invalid email
    Wait Until Element Contains    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_ENTER_EMAIL_ERROR}    ${ENTER_EMAIL_INVALID_ERROR}
    Sleep    1s
    Delete All Cookies
    Close Browser

Global Footer_TC_12: Verify Valid EmailID in Newsletter Subcription_Register.
    Open Website
    Accept Cookies
    Login    ${LOGIN_EMAIL_EXISTING_CUSTOMER}      ${LOGIN_PASSWORD_EXISTING_CUSTOMER}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    #Verify the JOIN_THE_JASPAL_COMMUNITY
    Wait Until Page Contains Element    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY}
    #Select PDPA checkbox
    Click Element    ${FOOTER_PDPA_CHECKBOX}
    #Input email 
    Input Text    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_ENTER_EMAIL}    ${JASPAL_COMMUNITY_ENTER_EMAIL_INVALID}    
    #Click subscribe the newspaper
    Click Element    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_ENTER_EMAIL_ARROW}
    #Verify the Error Message invalid email
    Wait Until Element Contains    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_ENTER_EMAIL_ERROR}    ${ENTER_EMAIL_INVALID_ERROR}
    Sleep    1s
    #Go to header
    Wait Until Page Contains Element    ${WEB_LOGO}
    Sleep    1s
    Logout
    Delete All Cookies
    Close Browser
    