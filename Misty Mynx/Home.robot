*** Settings ***
Library    SeleniumLibrary
Resource    variables.robot
Resource    keywords.robot

*** Test Cases ***
Home_TC_1: Verify_Back To Top_Guest
    Open Website
    Accept Cookies
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    #Scroll up to top of page
    Wait Until Page Contains Element    xpath=//div[@class="scroll-top"]
    Click Element    xpath=//div[@class="scroll-top"]
    Wait Until Page Contains Element    ${WEB_LOGO_MM}
    Delete All Cookies
    Close Browser




Home_TC_2: Verify_Back To Top_Register
    Open Website
    Accept Cookies
    Login    butternueybn@gmail.com    Bn12345678/
    Wait Until Element Is Not Visible    ${LOGIN_POPUP}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    #Scroll up to top of page
    Wait Until Page Contains Element    xpath=//div[@class="scroll-top"]
    Click Element    xpath=//div[@class="scroll-top"]
    Wait Until Page Contains Element    ${WEB_LOGO_MM}
    Delete All Cookies
    Close Browser
