*** Settings ***
Library    SeleniumLibrary
Resource   variables_locator.robot
Resource    variables_text.robot
Resource   keywords.robot


*** Test Cases ***
Test Delete
    Delete Account
    Close Browser