*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    variables.robot
Resource    keywords.robot
Resource    variables_locator.robot
Resource    variables_text.robot

*** Test Cases ***
Header-General_TC_1: Search Product_Guest
    Open Website
    Accept Cookies
    #Click on Search icon
    Click Element    ${HOMEPAGE_SEARCH_PRODUCT_ICON}
    #Search Product
    Input Text    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ${PRODUCT_1}
    #Click on Enter
    Press Keys    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ${KEYBOARD_BUTTON_ENTER}
    #Click on product on PLP
    Click Element    ${PLP_PRODUCT_1}
    Wait Until Element Contains    xpath=//ul[@class="items"]//li[@class="item product"]//strong    ${PRODUCT_1}
    Delete All Cookies
    Close Browser

Header-General_TC_2: Search Product_Register
    Open Website
    Accept Cookies
    Login    butternueybn@gmail.com    Bn12345678/
    Wait Until Element Is Not Visible    ${LOGIN_POPUP}
    #Click on Search icon
    Click Element    ${HOMEPAGE_SEARCH_PRODUCT_ICON}
    #Search Product
    Input Text    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ${PRODUCT_1}
    #Click on Enter
    Press Keys    ${HOMEPAGE_SEARCH_PRODUCT_FIELD}    ${KEYBOARD_BUTTON_ENTER}
    #Click on product on PLP
    Click Element    ${PLP_PRODUCT_1}
    Wait Until Element Contains    xpath=//ul[@class="items"]//li[@class="item product"]//strong    ${PRODUCT_1}
    Logout
    Delete All Cookies
    Close Browser

Header-General_TC_3: Login And Logout With Valid Credentials
    Open Website
    Accept Cookies
    Login    butternueybn@gmail.com    Bn12345678/
    Wait Until Element Is Not Visible    ${LOGIN_POPUP}
    Logout
    Delete All Cookies
    Close Browser

Header-General_TC_4: Login With Invalid Credentials
    Open Website
    Accept Cookies
    Login    butternueybninvalid@gmail.com    Bn12345678/invalid
    Wait Until Element Contains    ${LOGIN_POPUP}    Invalid login or password.
    Delete All Cookies
    Close Browser

Header-General_TC_5: Verify Mandatory Fields In Login
    Open Website
    Accept Cookies
    Login    ${EMPTY}    ${EMPTY}
    Wait Until Element Contains    xpath=//div[@class="control"]//div[@id="email-login-error"]    Please enter your email address.
    Wait Until Element Contains    xpath=//div[@class="field password form-group required margin-bottom-5"]//div[@id="pass-login-error"]    Please enter your password.
    Delete All Cookies
    Close Browser

Header-General_TC_6: Verify Mega Menu / Bread Crumbs_Guest
    Open Website
    Accept Cookies
    #Click New In collection
    Click Element    xpath=//nav/ul/li/a/span[text()="New In"]
    Wait Until Element Contains    xpath=//div[@class="breadcrumbs"]    New In
    #Click Collection collection
    Click Element    xpath=//nav/ul/li/a/span[text()="Collection"]
    Wait Until Element Contains    xpath=//div[@class="breadcrumbs"]    Collection        
    #Click Active collection
    Click Element    xpath=//nav/ul/li/a/span[text()="Active"]
    Wait Until Element Contains    xpath=//div[@class="breadcrumbs"]    Active
    #Click QA Product collection
    Click Element    xpath=//nav/ul/li/a/span[text()="QA Product"]
    Wait Until Element Contains    xpath=//div[@class="breadcrumbs"]    QA Product
    Delete All Cookies
    Close Browser

Header-General_TC_7: Verify Mega Menu / Bread Crumbs_Register
    Open Website
    Accept Cookies
    Login    butternueybn@gmail.com    Bn12345678/
    Wait Until Element Is Not Visible    ${LOGIN_POPUP}
    #Click New In collection
    Click Element    xpath=//nav/ul/li/a/span[text()="New In"]
    Wait Until Element Contains    xpath=//div[@class="breadcrumbs"]    New In
    #Click Collection collection
    Click Element    xpath=//nav/ul/li/a/span[text()="Collection"]
    Wait Until Element Contains    xpath=//div[@class="breadcrumbs"]    Collection        
    #Click Active collection
    Click Element    xpath=//nav/ul/li/a/span[text()="Active"]
    Wait Until Element Contains    xpath=//div[@class="breadcrumbs"]    Active
    #Click QA Product collection
    Click Element    xpath=//nav/ul/li/a/span[text()="QA Product"]
    Wait Until Element Contains    xpath=//div[@class="breadcrumbs"]    QA Product
    Logout
    Delete All Cookies
    Close Browser

Header-General_TC_8: Able to Switch Language_Guest
    Open Website
    Accept Cookies
    #Verify EN Store  
    Wait Until Page Contains Element    xpath=//div[@class="panel wrapper"]//div[contains(@class, "dropdown")]//span[contains(text(), "En")][@class="header-switcher-lebel"]
    #Change Language to TH Store
    Click Element    xpath=//div[@class="panel wrapper"]//div[contains(@class, "dropdown")]//span[contains(text(), "En")][@class="header-switcher-lebel"]
    Click Element    xpath=//div[@class="panel wrapper"]//div[contains(@class, "dropdown")]//a[contains(text(), "ไทย")]
    Sleep    2s
    Wait Until Page Contains Element    xpath=//div[@class="panel wrapper"]//div[contains(@class, "dropdown")]//span[contains(text(), "Th")][@class="header-switcher-lebel"]
    Delete All Cookies
    Close Browser

Header-General_TC_9: Able to Switch Language_Register
    Open Website
    Accept Cookies
    Login    butternueybn@gmail.com    Bn12345678/
    Wait Until Element Is Not Visible    ${LOGIN_POPUP}
    #Verify EN Store  
    Wait Until Page Contains Element    xpath=//div[@class="panel wrapper"]//div[contains(@class, "dropdown")]//span[contains(text(), "En")][@class="header-switcher-lebel"]
    #Change Language to TH Store
    Click Element    xpath=//div[@class="panel wrapper"]//div[contains(@class, "dropdown")]//span[contains(text(), "En")][@class="header-switcher-lebel"]
    Click Element    xpath=//div[@class="panel wrapper"]//div[contains(@class, "dropdown")]//a[contains(text(), "ไทย")]
    Sleep    1s
    Wait Until Page Contains Element    xpath=//div[@class="panel wrapper"]//div[contains(@class, "dropdown")]//span[contains(text(), "Th")][@class="header-switcher-lebel"]
    Logout
    Delete All Cookies
    Close Browser

Header-General_TC_10: Able to Switch Currency_Guest
    Open Website
    Accept Cookies
    #Verify THB
    Wait Until Page Contains Element    xpath=//div[@class="panel wrapper"]//div[contains(@class,'dropdown')]//div[@id="switcher-currency-trigger-nav"]//strong[@class="language-THB"]
    #Change to USD
    Click Element    xpath=//div[@class="panel wrapper"]//div[contains(@class,'dropdown')]//div[@id="switcher-currency-trigger-nav"]//strong[@class="language-THB"]
    Click Element    xpath=//div[@class="panel wrapper"]//ul[contains(@class,'dropdown')]//li[@class="currency-USD switcher-option"]
    Sleep    1s
    Wait Until Page Contains Element    xpath=//div[@class="panel wrapper"]//div[contains(@class,'dropdown')]//div[@id="switcher-currency-trigger-nav"]//strong[@class="language-USD"]   
    Delete All Cookies
    Close Browser

Header-General_TC_11: Able to Switch Currency_Register
    Open Website
    Accept Cookies
    Login    butternueybn@gmail.com    Bn12345678/
    Wait Until Element Is Not Visible    ${LOGIN_POPUP}
    #Verify THB
    Wait Until Page Contains Element    xpath=//div[@class="panel wrapper"]//div[contains(@class,'dropdown')]//div[@id="switcher-currency-trigger-nav"]//strong[@class="language-THB"]
    #Change to USD
    Click Element    xpath=//div[@class="panel wrapper"]//div[contains(@class,'dropdown')]//div[@id="switcher-currency-trigger-nav"]//strong[@class="language-THB"]
    Wait Until Page Contains Element    xpath=//div[@class="panel wrapper"]//ul[contains(@class,'dropdown')]//li[@class="currency-USD switcher-option"]
    Click Element    xpath=//div[@class="panel wrapper"]//ul[contains(@class,'dropdown')]//li[@class="currency-USD switcher-option"]
    Sleep    1s
    Wait Until Page Contains Element    xpath=//div[@class="panel wrapper"]//div[contains(@class,'dropdown')]//div[@id="switcher-currency-trigger-nav"]//strong[@class="language-USD"] 
    Logout
    Delete All Cookies
    Close Browser
