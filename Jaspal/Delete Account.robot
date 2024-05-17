*** Settings ***
Library    SeleniumLibrary
Resource   variables_locator.robot
Resource    variables_text.robot
Resource   keywords.robot


*** Test Cases ***
Test Delete
    [Documentation]    To delete account that created.
    Delete Account
    Close Browser