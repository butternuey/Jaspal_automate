*** Settings ***
Library    SeleniumLibrary
Resource   variables.robot
Resource   keywords.robot


*** Test Cases ***
Test Delete
    Delete Account
    Close Browser