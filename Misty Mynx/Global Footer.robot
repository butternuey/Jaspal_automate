*** Settings ***
Library    SeleniumLibrary
Resource   keywords.robot
Resource    variables_locator.robot
Resource    variables_text.robot

*** Test Cases ***
Global Footer_TC_1: Verify Footer Lables_Guest
    Open Website
    Accept Cookies
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_MY_ACCOUNT_MY_ORDERS}
    #Click on My Order in footer
    Click Element    ${FOOTER_MY_ACCOUNT_MY_ORDERS}
    #Verify Bread Crumb
    Wait Until Element Contains    xpath=//div[@class="breadcrumbs"]//li[@class="item cms_page"]    Order Information    
    #Click the MM logo
    Click Element    ${WEB_LOGO_MM}
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
    Click Element    ${WEB_LOGO_MM}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_ABOUT_US_WHO_WE_ARE}
    #Click on who we are in footer
    Click Element    ${FOOTER_ABOUT_US_WHO_WE_ARE}    
    #Verify Bread Crumb
    Wait Until Element Contains    xpath=//div[@class="breadcrumbs"]//li[@class="item cms_page"]    MM Our Story            
    #Click the MM logo
    Click Element    ${WEB_LOGO_MM}
    #Scroll down to bottom of page
    #Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    #Wait Until Page Contains Element    ${FOOTER_ABOUT_US_WORK_WITH_US}
    #Click on who we are in footer
    #Click Element    ${FOOTER_ABOUT_US_WORK_WITH_US}
    #Verify WORK_WITH_US page
    #Wait Until Element Contains    xpath=//div[@class="breadcrumbs"]//li[@class="item cms_page"]    Work With Us        --> BUG    
    #Click the MM logo
    #Click Element    ${WEB_LOGO_MM}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_ABOUT_US_JASPAL_GROUP}
    #Click on JASPAL_GROUP in footer
    Click Element    ${FOOTER_ABOUT_US_JASPAL_GROUP}    
    #Wait and switch to the new tab
    ${WINDOW_HANDLES}=    Get Window Handles
    Switch Window    ${WINDOW_HANDLES}[1]
    #Verify JASPAL GROUP Page in new tab
    Page Should Contain    JASPAL GROUP
    #Wait and switch to the old tab
    ${WINDOW_HANDLES}=    Get Window Handles
    Switch Window    ${WINDOW_HANDLES}[0]
    #Verify JASPAL GROUP Page in new tab
    Page Should Contain Element    ${WEB_LOGO_MM}
    #Click the MM logo
    Click Element    ${WEB_LOGO_MM}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_ABOUT_US_JPS_CLUB}
    #Click on JPS_CLUB in footer
    Click Element    ${FOOTER_ABOUT_US_JPS_CLUB}    
    #Wait and switch to the new tab
    ${WINDOW_HANDLES}=    Get Window Handles
    Switch Window    ${WINDOW_HANDLES}[1]
    #Verify JPS_CLUB Page in new tab
    Page Should Contain Element    css=#header > div.elementor-container.elementor-column-gap-default > div.elementor-column.elementor-col-25.elementor-top-column.elementor-element.elementor-element-59136322.ob-is-e3 > div > div > div > a > img
    #Wait and switch to the old tab
    ${WINDOW_HANDLES}=    Get Window Handles
    Switch Window    ${WINDOW_HANDLES}[0]
    #Verify JPS_CLUB  Page in new tab
    Page Should Contain Element    ${WEB_LOGO_MM}          
    #Click the MM logo
    Click Element    ${WEB_LOGO_MM}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_CUSTOMER_SERVICE_FAQS}
    #Click on FAQS in footer
    Click Element    ${FOOTER_CUSTOMER_SERVICE_FAQS}    
    #Verify Bread Crumb
    Wait Until Element Contains    xpath=//div[@class="breadcrumbs"]//li[@class="item faq"]    Frequently Asked Question  
    #Click the MM logo
    Click Element    ${WEB_LOGO_MM}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_CUSTOMER_SERVICE_FIND_A_STORE}
    #Click on FIND_A_STORE in footer
    Click Element    ${FOOTER_CUSTOMER_SERVICE_FIND_A_STORE}    
    Wait Until Page Contains    Store Locator           
    #Click the MM logo
    Click Element    ${WEB_LOGO_MM}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_CUSTOMER_SERVICE_RETURN_&_EXCHANGES}
    #Click on RETURN_&_EXCHANGES in footer
    Click Element    ${FOOTER_CUSTOMER_SERVICE_RETURN_&_EXCHANGES}    
    #Verify Bread Crumb
    Wait Until Element Contains    xpath=//div[@class="breadcrumbs"]//li[@class="item cms_page"]    Exchange and Returns Policy           
    #Click the MM logo
    Click Element    ${WEB_LOGO_MM}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_CUSTOMER_SERVICE_CONTACT_US}
    #Click on CONTACT_US in footer
    Click Element    ${FOOTER_CUSTOMER_SERVICE_CONTACT_US}    
    #Verify Bread Crumb
    Wait Until Element Contains    xpath=//div[@class="breadcrumbs"]//li[@class="item Contact Us"]    Contact Us           
    #Click the MM logo
    Click Element    ${WEB_LOGO_MM}
    Delete All Cookies
    Close Browser

Global Footer_TC_2: Verify Footer Lables_Register
    Open Website
    Accept Cookies
    Login    butternueybn@gmail.com    Bn12345678/
    Sleep    1s
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_MY_ACCOUNT_MY_ORDERS}
    #Click on My Order in footer
    Sleep    2s
    Click Element    ${FOOTER_MY_ACCOUNT_MY_ORDERS}
    #Verify Bread Crumb
    Wait Until Page Contains    My Orders
    #Click the MM logo
    Click Element    ${WEB_LOGO_MM}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_MY_ACCOUNT_MY_CREDITS}
    #Click on MY_CREDITS in footer
    Click Element    ${FOOTER_MY_ACCOUNT_MY_CREDITS}
    #Verify ONLINE CREDITS
    Sleep    2s
    Wait Until Page Contains    Online Credits
    #Click the MM logo
    Sleep    1s
    Click Element    ${WEB_LOGO_MM}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_ABOUT_US_WHO_WE_ARE}
    #Click on who we are in footer
    Click Element    ${FOOTER_ABOUT_US_WHO_WE_ARE}    
    #Verify Bread Crumb
    Wait Until Element Contains    xpath=//div[@class="breadcrumbs"]//li[@class="item cms_page"]    MM Our Story            
    #Click the MM logo
    Click Element    ${WEB_LOGO_MM}
    #Scroll down to bottom of page
    #Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    #Wait Until Page Contains Element    ${FOOTER_ABOUT_US_WORK_WITH_US}
    #Click on who we are in footer
    #Click Element    ${FOOTER_ABOUT_US_WORK_WITH_US}
    #Verify WORK_WITH_US page
    #Wait Until Element Contains    xpath=//div[@class="breadcrumbs"]//li[@class="item cms_page"]    Work With Us        --> BUG    
    #Click the MM logo
    #Click Element    ${WEB_LOGO_MM}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_ABOUT_US_JASPAL_GROUP}
    #Click on JASPAL_GROUP in footer
    Click Element    ${FOOTER_ABOUT_US_JASPAL_GROUP}    
    #Wait and switch to the new tab
    ${WINDOW_HANDLES}=    Get Window Handles
    Switch Window    ${WINDOW_HANDLES}[1]
    #Verify JASPAL GROUP Page in new tab
    Page Should Contain    JASPAL GROUP
    #Wait and switch to the old tab
    ${WINDOW_HANDLES}=    Get Window Handles
    Switch Window    ${WINDOW_HANDLES}[0]
    #Verify JASPAL GROUP Page in new tab
    Page Should Contain Element    ${WEB_LOGO_MM}
    #Click the MM logo
    Click Element    ${WEB_LOGO_MM}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_ABOUT_US_JPS_CLUB}
    #Click on JPS_CLUB in footer
    Click Element    ${FOOTER_ABOUT_US_JPS_CLUB}    
    #Wait and switch to the new tab
    ${WINDOW_HANDLES}=    Get Window Handles
    Switch Window    ${WINDOW_HANDLES}[1]
    #Verify JPS_CLUB Page in new tab
    Page Should Contain Element    css=#header > div.elementor-container.elementor-column-gap-default > div.elementor-column.elementor-col-25.elementor-top-column.elementor-element.elementor-element-59136322.ob-is-e3 > div > div > div > a > img
    #Wait and switch to the old tab  test
    ${WINDOW_HANDLES}=    Get Window Handles
    Switch Window    ${WINDOW_HANDLES}[0]
    #Verify JPS_CLUB  Page in new tab
    Page Should Contain Element    ${WEB_LOGO_MM}          
    #Click the MM logo
    Click Element    ${WEB_LOGO_MM}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_CUSTOMER_SERVICE_FAQS}
    #Click on FAQS in footer
    Click Element    ${FOOTER_CUSTOMER_SERVICE_FAQS}    
    #Verify Bread Crumb
    Wait Until Element Contains    xpath=//div[@class="breadcrumbs"]//li[@class="item faq"]    Frequently Asked Question  
    #Click the MM logo
    Click Element    ${WEB_LOGO_MM}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_CUSTOMER_SERVICE_FIND_A_STORE}
    #Click on FIND_A_STORE in footer
    Click Element    ${FOOTER_CUSTOMER_SERVICE_FIND_A_STORE}
    Sleep    1s
    Wait Until Page Contains    Store Locator           
    #Click the MM logo
    Click Element    ${WEB_LOGO_MM}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_CUSTOMER_SERVICE_RETURN_&_EXCHANGES}
    #Click on RETURN_&_EXCHANGES in footer
    Click Element    ${FOOTER_CUSTOMER_SERVICE_RETURN_&_EXCHANGES}    
    #Verify Bread Crumb
    Wait Until Element Contains    xpath=//div[@class="breadcrumbs"]//li[@class="item cms_page"]    Exchange and Returns Policy           
    #Click the MM logo
    Click Element    ${WEB_LOGO_MM}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Page Contains Element    ${FOOTER_CUSTOMER_SERVICE_CONTACT_US}
    #Click on CONTACT_US in footer
    Click Element    ${FOOTER_CUSTOMER_SERVICE_CONTACT_US}    
    #Verify Bread Crumb
    Wait Until Element Contains    xpath=//div[@class="breadcrumbs"]//li[@class="item Contact Us"]    Contact Us           
    #Click the MM logo
    Click Element    ${WEB_LOGO_MM}
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
    Delete All Cookies
    Close Browser

Global Footer_TC_4: Verify Various Social Media Options_Register
    Open Website
    Accept Cookies
    Login    butternueybn@gmail.com    Bn12345678/
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
    Wait Until Page Contains Element    xpath=//div[@class="scroll-top"]
    Click Element    xpath=//div[@class="scroll-top"]
    Wait Until Page Contains Element    ${WEB_LOGO_MM}
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
    Wait Until Page Contains Element    xpath=//div[@class="field custom-checkbox newsletter-agreement required"]//label/span
    #Input email 
    Input Text    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_ENTER_EMAIL}   ${JASPAL_COMMUNITY_ENTER_EMAIL}
    #Click the enter button to subscribe the newspaper
    Click Element    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_ENTER_EMAIL_ARROW}
    #Verify the Error Message to select Privacy Policy
    Wait Until Element Contains    xpath=//div[@class="field custom-checkbox newsletter-agreement required"]//div[@class="control"]//div[@id="newsletter-agreement-error"]    Please agree to the PDPA policy.
    #Select PDPA checkbox
    Click Element    ${FOOTER_PDPA_CHECKBOX}
    #Click the enter button to subscribe the newspaper
    Click Element    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_ENTER_EMAIL_ARROW}
    #Verify success message
    Wait Until Element Contains    xpath=//div[@class="modal-inner-wrap"]//div[@class="modal-content"]//p[@class="message success "]    Thank you for your subscription.
    #Click on ok button on popup
    Click Element    xpath=//button[@class="action-primary action-accept"]
    Wait Until Element Is Not Visible    xpath=//div[@class="modal-inner-wrap"]//div[@class="modal-content"]//p[@class="message success "]
    Delete All Cookies
    Close Browser

Global Footer_TC_6: Newsletter Subcription_Register
    Open Website
    Accept Cookies
    Login    butternueybn@gmail.com    Bn12345678/
    Sleep    1s
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    #Verify the JOIN_THE_JASPAL_COMMUNITY
    Wait Until Page Contains Element    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY}
    #Validate the PDPA Message
    Wait Until Page Contains Element    xpath=//div[@class="field custom-checkbox newsletter-agreement required"]//label/span
    #Input email (Have to change email that have never subscripted before. If you want to use the same email you will run unsubscript feature.)
    Input Text    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_ENTER_EMAIL}    ${JASPAL_COMMUNITY_ENTER_EMAIL_1}   
    #Click the enter button to subscribe the newspaper
    Click Element    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_ENTER_EMAIL_ARROW}
    #Verify the Error Message to select Privacy Policy
    Wait Until Element Contains    xpath=//div[@class="field custom-checkbox newsletter-agreement required"]//div[@class="control"]//div[@id="newsletter-agreement-error"]    Please agree to the PDPA policy.
    #Select PDPA checkbox
    Click Element    ${FOOTER_PDPA_CHECKBOX}
    #Click the enter button to subscribe the newspaper
    Click Element    ${FOOTER_JOIN_THE_JASPAL_COMMUNITY_ENTER_EMAIL_ARROW}
    #Verify success message
    Wait Until Element Contains    xpath=//div[@class="modal-inner-wrap"]//div[@class="modal-content"]//p[@class="message success "]    Thank you for your subscription.
    #Click on ok button on popup
    Click Element    xpath=//button[@class="action-primary action-accept"]
    #Go to header
    Wait Until Element Is Not Visible    xpath=//div[@class="modal-inner-wrap"]//div[@class="modal-content"]//p[@class="message success "]
    Wait Until Page Contains Element    ${WEB_LOGO_MM}
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
    Wait Until Element Contains    xpath=//div[@class="breadcrumbs"]//li[@class="item cms_page"]    Order Information
    #Verify Order Reference Number field
    Wait Until Page Contains    Order Reference Number
    #Enter Order Reference Number (Can checkout with Checkout_TC_1 before run this case because it have Order number and email)
    Input Text    ${MY_ORDER_GUEST_ORDER_REFERENCE_NUMBER_FIELD}    MIMEN240000003103  
    #Verify Email Address field
    Wait Until Page Contains    Email Address
    #Enter Email Address
    Input Text    ${MY_ORDER_GUEST_EMAIL_ADDRESS_FIELD}    kittiya_test@gmail.com
    #Verify Billing Last Name field
    Wait Until Page Contains    Billing Last Name
    #Enter Billing Last Name
    Input Text    ${MY_ORDER_GUEST_BILLING_LAST_NAME_FIELD}    Thipathikeat
    #Click on the search button
    Click Element    ${MY_ORDER_GUEST_SEARCH_BUTTON}
    #Verify the My order page is displayed
    Sleep    1s
    Wait Until Page Contains Element    xpath=//div[@class="order-id"]//span[@class="label"][contains(text(),'Order Reference')]
    Sleep    1s
    ${GUEST_ORDER_REFERENCE}    Get Text    xpath=//div[@class="order-id"]//span[@class="value"]
    Log To Console    ORDER REFERENCE : ${GUEST_ORDER_REFERENCE}
    Sleep    2s
    Delete All Cookies
    Close Browser

Global Footer_TC_8: Verify Mandatory Fields_My Order Search_Footer_GuestUser
    Open Website
    Accept Cookies
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    #Click on My Order in footer
    Wait Until Page Contains Element    ${FOOTER_MY_ACCOUNT_MY_ORDERS}
    Sleep    1s
    Click Element    ${FOOTER_MY_ACCOUNT_MY_ORDERS}
    #Verify Bread Crumb
    Wait Until Element Contains    xpath=//div[@class="breadcrumbs"]//li[@class="item cms_page"]    Order Information
    #Verify Order Reference Number field
    Wait Until Page Contains    Order Reference Number
    #Enter Order Reference Number (Can checkout with Checkout_TC_1 before run this case because it have Order number and email)
    Input Text    ${MY_ORDER_GUEST_ORDER_REFERENCE_NUMBER_FIELD}    ${EMPTY}  
    #Verify Email Address field
    Wait Until Page Contains    Email Address
    #Enter Email Address
    Input Text    ${MY_ORDER_GUEST_EMAIL_ADDRESS_FIELD}    ${EMPTY}
    #Verify Billing Last Name field
    Wait Until Page Contains    Billing Last Name
    #Enter Billing Last Name
    Input Text    ${MY_ORDER_GUEST_BILLING_LAST_NAME_FIELD}    ${EMPTY}
    #Click on the search button
    Click Element    ${MY_ORDER_GUEST_SEARCH_BUTTON}
    #Verify Order Reference Number field As Mandatory
    Wait Until Element Contains    xpath=//div[@id="oar-order-id-error"]    This is a required field.
    Sleep    1s
    #Verify Email Address field As Mandatory
    Wait Until Element Contains    xpath=//div[@id="oar_email-error"]    This is a required field.
    #Verify Billing Last Name field As Mandatory
    Wait Until Element Contains    xpath=//div[@id="oar-billing-lastname-error"]    This is a required field.
    Sleep    2s
    Delete All Cookies
    Close Browser

Global Footer_TC_9: Verify Email As Mandatory in Newsletter Subcription_Guest
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
    Wait Until Element Contains    xpath=//div[@class="control"]//div[@id="newsletter-error"]    This is a required field.
    Sleep    1s
    Delete All Cookies
    Close Browser

Global Footer_TC_10: Verify Email As Mandatory in Newsletter Subcription_Register
    Open Website
    Accept Cookies
    Login    butternueybn@gmail.com    Bn12345678/
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
    Wait Until Element Contains    xpath=//div[@class="control"]//div[@id="newsletter-error"]    This is a required field.
    Sleep    1s
    #Go to header
    Wait Until Element Is Not Visible    xpath=//div[@class="modal-inner-wrap"]//div[@class="modal-content"]//p[@class="message success "]
    Wait Until Page Contains Element    ${WEB_LOGO_MM}
    Sleep    1s
    Logout
    Delete All Cookies
    Close Browser

Global Footer_TC_11: Verify Valid EmailID in Newsletter Subcription_Guest
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
    Wait Until Element Contains    xpath=//div[@class="control"]//div[@id="newsletter-error"]    Please enter a valid email address (Ex: sally@domain.com)
    Sleep    1s
    Delete All Cookies
    Close Browser

Global Footer_TC_12: Verify Valid EmailID in Newsletter Subcription_Register
    Open Website
    Accept Cookies
    Login    butternueybn@gmail.com    Bn12345678/
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
    Wait Until Element Contains    xpath=//div[@class="control"]//div[@id="newsletter-error"]    Please enter a valid email address (Ex: sally@domain.com)
    Sleep    1s
    #Go to header
    Wait Until Element Is Not Visible    xpath=//div[@class="modal-inner-wrap"]//div[@class="modal-content"]//p[@class="message success "]
    Wait Until Page Contains Element    ${WEB_LOGO_MM}
    Sleep    1s
    Logout
    Delete All Cookies
    Close Browser
    