*** Settings ***
Library    SeleniumLibrary
Resource    keywords.robot
Resource    variables_locator.robot
Resource    variables_text.robot

*** Test Cases ***
Home_TC_1: Verify_Back To Top_Guest
    Open Website
    Accept Cookies
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    #Scroll up to top of page
    Wait Until Page Contains Element    ${HOMEPAGE_SCROLL_TO_TOP_BUTTON}
    Click Element    ${HOMEPAGE_SCROLL_TO_TOP_BUTTON}
    Wait Until Page Contains Element    ${WEB_LOGO_MM}
    Delete All Cookies
    Close Browser

Home_TC_2: Verify_Back To Top_Register
    Open Website
    Accept Cookies
    Login    ${CREATE_ACCOUNT_EMAIL}    ${CREATE_ACCOUNT_PASSWORD}
    Wait Until Element Is Not Visible    ${LOGIN_POPUP}
    #Scroll down to bottom of page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    #Scroll up to top of page
    Wait Until Page Contains Element    ${HOMEPAGE_SCROLL_TO_TOP_BUTTON}
    Click Element    ${HOMEPAGE_SCROLL_TO_TOP_BUTTON}
    Wait Until Page Contains Element    ${WEB_LOGO_MM}
    Delete All Cookies
    Close Browser
