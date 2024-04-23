*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource   variables.robot
Resource   keywords.robot

*** Test Cases ***
#Login
Login_Testcase 1: Login Success
    Open Website
    Login    kittiyanuey994@gmail.com    Bn12345678/
    Wait Until Element Is Not Visible    ${LOGIN_POPUP}
    Logout
    Close Browser

Login_Testcase 2: Login without filing anything
    Open Website
    #Enter by empty Email and Password
    Login    ${EMPTY}    ${EMPTY}
    #Check Email eror text
    Wait Until Element Contains    ${LOGIN_ERROR_EMAIL}    ${LOGIN_ERROR_EMAIL_EMPTY_TEXT}
    #Check Password eror text
    Wait Until Element Contains    ${LOGIN_ERROR_PASSWORD}    ${LOGIN_EROR_PASSWORD_EMPTY_TEXT}
    Click Element    ${LOGIN_CLOSE_POPUP_BUTTON}
    Wait Until Element Is Not Visible    ${LOGIN_POPUP}
    Logout
    Close Browser




    



    


