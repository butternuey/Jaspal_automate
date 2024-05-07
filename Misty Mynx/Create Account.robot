*** Settings ***
Library    SeleniumLibrary
Resource   keywords.robot
Resource    variables_locator.robot
Resource    variables_text.robot

*** Test Cases ***
#Create Account
Create_Account_TC_1: Verify User Able to Register successfully
    [Documentation]    User able to register successfully when fill in all mandatory field.
    Open Website
    Accept Cookies
    Create Account
    #Enter FIRSTNAME
    Input Text    ${CREATE_ACCOUNT_FIRSTNAME_TEXTBOX}    ${CREATE_ACCOUNT_FIRSTNAME_TEXT}
    #Enter LASTNAME
    Input Text    ${CREATE_ACCOUNT_LASTNAME_TEXTBOX}    ${CREATE_ACCOUNT_LASTNAME_TEXT}
    #Enter EMAIL
    Input Text    ${CREATE_ACCOUNT_EMAIL_TEXTBOX}    ${CREATE_ACCOUNT_EMAIL}
    #Enter PASSWORD
    Input Text    ${CREATE_ACCOUNT_PASSWORD_TEXTBOX}    ${CREATE_ACCOUNT_PASSWORD}
    #Enter PASSWORD Again
    Input Text    ${CREATE_ACCOUNT_RE_ENTER_PASSWORD_TEXTBOX}    ${CREATE_ACCOUNT_RE_ENTER_PASSWORD}
    #Select DOB dropdown
    Click Element    ${CREATE_ACCOUNT_DOB_TEXTBOX}
    Sleep    1s
    #Select Year
    Select From List By Value    ${CREATE_ACCOUNT_DOB_YEAR_DROPDOWN}    ${CREATE_ACCOUNT_DOB_YEAR_VALUE}
    Sleep    1s
    #Select Month (0=JAN, 1=FEB, 2=MAR, ...)
    Select From List By Value    ${CREATE_ACCOUNT_DOB_MONTH_DROPDOWN}    ${CREATE_ACCOUNT_DOB_MONTH_VALUE}
    Sleep    1s
    #Select Date
    Click Element    ${CREATE_ACCOUNT_DOB_DATE}
    Sleep    1s
    #Select Gender (4=MALE, 7=FEMALE, 10=NOT SPECCIFIED)
    Select From List By Value    ${CREATE_ACCOUNT_GENDER_DROPDOWN}    ${CREATE_ACCOUNT_GENDER_VALUE}
    #Enter ISD
    Input Text    ${CREATE_ACCOUNT_ISD_CODE_TEXTBOX}    ${CREATE_ACCOUNT_ISD_CODE}
    #Enter Phone Number (Started without 0)
    Input Text    ${CREATE_ACCOUNT_PHONENUMBER_TEXTBOX}    ${CREATE_ACCOUNT_PHONENUMBER}
    #Check Subscribe checkbox
    Select Checkbox    ${CREATE_ACCOUNT_Subscribe to our newsletter!_CHECKBOX}
    Sleep    1s
    #Check TC PDPA
    Select Checkbox    ${CREATE_ACCOUNT_TC_PDPA_CHECKBOX}
    #Click on Create New Account Button
    Click Element    ${CREATE_ACCOUNT_BUTTON}
    #Check Email Confirm Popup
    Sleep    2s
    Wait Until Page Contains    ${CREATE_ACCOUNT_CHECK_EMAIL_COMFIRM_TEXT}
    Sleep    1s
    Delete All Cookies
    Close Browser

Create_Account_TC_2: Verify User Has to Fill All Mandatory Fields to Register
    [Documentation]    Does not fill in all Mandatory field to verify error text
    Open Website
    Accept Cookies
    Create Account
    #Enter FIRSTNAME
    Input Text    ${CREATE_ACCOUNT_FIRSTNAME_TEXTBOX}    ${EMPTY}     
    #Enter LASTNAME
    Input Text    ${CREATE_ACCOUNT_LASTNAME_TEXTBOX}    ${EMPTY}         
    #Enter EMAIL
    Input Text    ${CREATE_ACCOUNT_EMAIL_TEXTBOX}    ${EMPTY}         
    #Enter PASSWORD
    Input Text    ${CREATE_ACCOUNT_PASSWORD_TEXTBOX}    ${EMPTY}     
    #Enter PASSWORD Again
    Input Text    ${CREATE_ACCOUNT_RE_ENTER_PASSWORD_TEXTBOX}    ${EMPTY}
    #Select DOB dropdown
    Click Element    ${CREATE_ACCOUNT_DOB_TEXTBOX}
    Wait Until Page Contains Element    ${CREATE_ACCOUNT_DOB_POPUP}
    Click Element    ${CREATE_ACCOUNT_DOB_ICON}
    Sleep    1s
    #Select Gender (4=MALE, 7=FEMALE, 10=NOT SPECCIFIED)
    Click Element    ${CREATE_ACCOUNT_GENDER_PLEASE_VERIFY_GENDER_OPTION}
    #Enter ISD
    Input Text    ${CREATE_ACCOUNT_ISD_CODE_TEXTBOX}    ${EMPTY}
    #Enter Phone Number (Started without 0)
    Input Text    ${CREATE_ACCOUNT_PHONENUMBER_TEXTBOX}    ${EMPTY}
    Sleep    1s
    #Click on Create New Account Button
    Click Element    ${CREATE_ACCOUNT_BUTTON}
    Click Element    ${CREATE_ACCOUNT_BUTTON}
    Sleep    3s
    #Verify FIRSTNAME Error Message
    Wait Until Element Contains    ${CREATE_ACCOUNT_FIRSTNAME_ERROR}    ${CREATE_ACCOUNT_FIRSTNAME_EMPTY_ERROR_TEXT}
    #Verify LASTNAME Error Message
    Wait Until Element Contains    ${CREATE_ACCOUNT_LASTNAME_ERROR}    ${CREATE_ACCOUNT_LASTNAME_EMPTY_ERROR_TEXT}
    #Verify EMAIL Error Message
    Wait Until Element Contains    ${CREATE_ACCOUNT_EMAIL_ERROR}    ${CREATE_ACCOUNT_EMAIL_EMPTY_ERROR_TEXT}
    #Verify PASSWORD Error Message
    Wait Until Element Contains    ${CREATE_ACCOUNT_PASSWORD_ERROR}    ${CREATE_ACCOUNT_PASSWORD_EMPTY_ERROR_TEXT}
    #Verify Re-Enter Password Error Message
    Wait Until Element Contains    ${CREATE_ACCOUNT_RE_ENTER_PASSWORD_ERROR}    ${CREATE_ACCOUNT_RE_ENTER_PASSWORD_EMPTY_ERROR_TEXT}
    #Verify DOB Error Message
    Wait Until Element Contains    ${CREATE_ACCOUNT_DOB_ERROR}    ${CREATE_ACCOUNT_DOB_EMPTY_ERROR_TEXT}
    #Verify Gender Error Message
    Wait Until Element Contains    ${CREATE_ACCOUNT_GENDER_ERROR}    ${CREATE_ACCOUNT_GENDER_EMPTY_ERROR_TEXT}
    #Verify Phone Number Error Message
    Wait Until Element Contains    ${CREATE_ACCOUNT_PHONENUMBER_ERROR}    ${CREATE_ACCOUNT_PHONENUMBER_EMPTY_ERROR_TEXT}
    #Verify PDPA Checkbox Error Message
    Wait Until Element Contains    ${CREATE_ACCOUNT_TC_PDPA_CHECKBOX_ERROR}    ${CREATE_ACCOUNT_TC_PDPA_CHECKBOX_EMPTY_ERROR_TEXT}
    Delete All Cookies
    Close Browser

Create_Account_TC_3: Verify User Has to Fill All Mandatory Fields to Register
    [Documentation]    Does not select PDPA Checkbox to verify error text
    Open Website
    Accept Cookies
    Create Account
    #Enter FIRSTNAME
    Input Text    ${CREATE_ACCOUNT_FIRSTNAME_TEXTBOX}    ${CREATE_ACCOUNT_FIRSTNAME_TEXT}
    #Enter LASTNAME
    Input Text    ${CREATE_ACCOUNT_LASTNAME_TEXTBOX}    ${CREATE_ACCOUNT_LASTNAME_TEXT}
    #Enter EMAIL
    Input Text    ${CREATE_ACCOUNT_EMAIL_TEXTBOX}    ${CREATE_ACCOUNT_EMAIL}
    #Enter PASSWORD
    Input Text    ${CREATE_ACCOUNT_PASSWORD_TEXTBOX}    ${CREATE_ACCOUNT_PASSWORD}
    #Enter PASSWORD Again
    Input Text    ${CREATE_ACCOUNT_RE_ENTER_PASSWORD_TEXTBOX}    ${CREATE_ACCOUNT_RE_ENTER_PASSWORD}
    #Select DOB dropdown
    Click Element    ${CREATE_ACCOUNT_DOB_TEXTBOX}
    Sleep    1s
    #Select Year
    Select From List By Value    ${CREATE_ACCOUNT_DOB_YEAR_DROPDOWN}    ${CREATE_ACCOUNT_DOB_YEAR_VALUE}
    Sleep    1s
    #Select Month (0=JAN, 1=FEB, 2=MAR, ...)
    Select From List By Value    ${CREATE_ACCOUNT_DOB_MONTH_DROPDOWN}    ${CREATE_ACCOUNT_DOB_MONTH_VALUE}
    Sleep    1s
    #Select Date
    Click Element    ${CREATE_ACCOUNT_DOB_DATE}
    Sleep    1s
    #Select Gender (4=MALE, 7=FEMALE, 10=NOT SPECCIFIED)
    Select From List By Value    ${CREATE_ACCOUNT_GENDER_DROPDOWN}    ${CREATE_ACCOUNT_GENDER_VALUE}
    #Enter ISD
    Input Text    ${CREATE_ACCOUNT_ISD_CODE_TEXTBOX}    ${CREATE_ACCOUNT_ISD_CODE}
    #Enter Phone Number (Started without 0)
    Input Text    ${CREATE_ACCOUNT_PHONENUMBER_TEXTBOX}    ${CREATE_ACCOUNT_PHONENUMBER}
    #Check Subscribe checkbox
    Select Checkbox    ${CREATE_ACCOUNT_Subscribe to our newsletter!_CHECKBOX}
    Sleep    1s
    #Click on Create New Account Button
    Click Element    ${CREATE_ACCOUNT_BUTTON}
    #Verify PDPA Checkbox Mandatory Message
    Wait Until Element Contains    ${CREATE_ACCOUNT_TC_PDPA_CHECKBOX_ERROR}    ${CREATE_ACCOUNT_TC_PDPA_CHECKBOX_EMPTY_ERROR_TEXT}
    Sleep    1s
    Delete All Cookies
    Close Browser

Create_Account_TC_4: Verify Password and Re-Enter Password Should Match
    [Documentation]    fill in Re-Enter Password field not same as Password field to verify error text.
    Open Website
    Accept Cookies
    Create Account
    #Enter FIRSTNAME
    Input Text    ${CREATE_ACCOUNT_FIRSTNAME_TEXTBOX}    ${CREATE_ACCOUNT_FIRSTNAME_TEXT}
    #Enter LASTNAME
    Input Text    ${CREATE_ACCOUNT_LASTNAME_TEXTBOX}    ${CREATE_ACCOUNT_LASTNAME_TEXT}
    #Enter EMAIL
    Input Text    ${CREATE_ACCOUNT_EMAIL_TEXTBOX}    ${CREATE_ACCOUNT_EMAIL}
    #Enter PASSWORD
    Input Text    ${CREATE_ACCOUNT_PASSWORD_TEXTBOX}    ${CREATE_ACCOUNT_PASSWORD}
    #Enter PASSWORD Again >> Not same as PASSWORD field
    Input Text    ${CREATE_ACCOUNT_RE_ENTER_PASSWORD_TEXTBOX}    ${CREATE_ACCOUNT_RE_ENTER_PASSWORD_INVALID}
    #Select DOB dropdown
    Click Element    ${CREATE_ACCOUNT_DOB_TEXTBOX}
    Sleep    1s
    #Select Year
    Select From List By Value    ${CREATE_ACCOUNT_DOB_YEAR_DROPDOWN}    ${CREATE_ACCOUNT_DOB_YEAR_VALUE}
    Sleep    1s
    #Select Month (0=JAN, 1=FEB, 2=MAR, ...)
    Select From List By Value    ${CREATE_ACCOUNT_DOB_MONTH_DROPDOWN}    ${CREATE_ACCOUNT_DOB_MONTH_VALUE}
    Sleep    1s
    #Select Date
    Click Element    ${CREATE_ACCOUNT_DOB_DATE}
    Sleep    1s
    #Select Gender (4=MALE, 7=FEMALE, 10=NOT SPECCIFIED)
    Select From List By Value    ${CREATE_ACCOUNT_GENDER_DROPDOWN}    ${CREATE_ACCOUNT_GENDER_VALUE}
    #Enter ISD
    Input Text    ${CREATE_ACCOUNT_ISD_CODE_TEXTBOX}    ${CREATE_ACCOUNT_ISD_CODE}
    #Enter Phone Number (Started without 0)
    Input Text    ${CREATE_ACCOUNT_PHONENUMBER_TEXTBOX}    ${CREATE_ACCOUNT_PHONENUMBER}
    #Check Subscribe checkbox
    Select Checkbox    ${CREATE_ACCOUNT_Subscribe to our newsletter!_CHECKBOX}
    Sleep    1s
    #Check TC PDPA
    Select Checkbox    ${CREATE_ACCOUNT_TC_PDPA_CHECKBOX}
    #Click on Create New Account Button
    Click Element    ${CREATE_ACCOUNT_BUTTON}
    #Verify Re-Enter Password Error Message
    Wait Until Element Contains    ${CREATE_ACCOUNT_RE_ENTER_PASSWORD_ERROR}    ${CREATE_ACCOUNT_RE_ENTER_PASSWORD_NOT_MATCH_ERROR_TEXT}
    Sleep    1s
    Delete All Cookies
    Close Browser

Create_Account_TC_5: Verify user can write only alphabtes in firstName and lastName
    Open Website
    Accept Cookies
    Create Account
    #Enter FIRSTNAME
    Input Text    ${CREATE_ACCOUNT_FIRSTNAME_TEXTBOX}    ${CREATE_ACCOUNT_FIRSTNAME_INVALID_TEXT}
    #Enter LASTNAME
    Input Text    ${CREATE_ACCOUNT_LASTNAME_TEXTBOX}    ${CREATE_ACCOUNT_LASTNAME_INVALID_TEXT}
    #Click on Create New Account Button
    Click Element    ${CREATE_ACCOUNT_BUTTON}
    #Verify FIRSTNAME Error Message
    Wait Until Element Contains    ${CREATE_ACCOUNT_FIRSTNAME_ERROR}    ${CREATE_ACCOUNT_FIRSTNAME_LATTERS_ERROR_TEXT}
    #Verify LASTNAME Error Message
    Wait Until Element Contains    ${CREATE_ACCOUNT_LASTNAME_ERROR}    ${CREATE_ACCOUNT_LASTNAME_LATTERS_ERROR_TEXT}
    Sleep    1s
    Delete All Cookies
    Close Browser

Create_Account_TC_6: Verify user should enter valid phone number
    [Documentation]    User enter phone number with A-Z or start with 0 
    Open Website
    Accept Cookies
    Create Account
    #Enter FIRSTNAME
    Input Text    ${CREATE_ACCOUNT_FIRSTNAME_TEXTBOX}    ${CREATE_ACCOUNT_FIRSTNAME_TEXT}
    #Enter LASTNAME
    Input Text    ${CREATE_ACCOUNT_LASTNAME_TEXTBOX}    ${CREATE_ACCOUNT_LASTNAME_TEXT}
    #Enter EMAIL
    Input Text    ${CREATE_ACCOUNT_EMAIL_TEXTBOX}    ${CREATE_ACCOUNT_EMAIL}
    #Enter PASSWORD
    Input Text    ${CREATE_ACCOUNT_PASSWORD_TEXTBOX}    ${CREATE_ACCOUNT_PASSWORD}
    #Enter PASSWORD Again
    Input Text    ${CREATE_ACCOUNT_RE_ENTER_PASSWORD_TEXTBOX}    ${CREATE_ACCOUNT_RE_ENTER_PASSWORD}
    #Select DOB dropdown
    Click Element    ${CREATE_ACCOUNT_DOB_TEXTBOX}
    Sleep    1s
    #Select Year
    Select From List By Value    ${CREATE_ACCOUNT_DOB_YEAR_DROPDOWN}    ${CREATE_ACCOUNT_DOB_YEAR_VALUE}
    Sleep    1s
    #Select Month (0=JAN, 1=FEB, 2=MAR, ...)
    Select From List By Value    ${CREATE_ACCOUNT_DOB_MONTH_DROPDOWN}    ${CREATE_ACCOUNT_DOB_MONTH_VALUE}
    Sleep    1s
    #Select Date
    Click Element    ${CREATE_ACCOUNT_DOB_DATE}
    Sleep    1s
    #Select Gender (4=MALE, 7=FEMALE, 10=NOT SPECCIFIED)
    Select From List By Value    ${CREATE_ACCOUNT_GENDER_DROPDOWN}    ${CREATE_ACCOUNT_GENDER_VALUE}
    #Enter ISD
    Input Text    ${CREATE_ACCOUNT_ISD_CODE_TEXTBOX}    ${CREATE_ACCOUNT_ISD_CODE}
    #Enter Phone Number (Started without 0)
    Input Text    ${CREATE_ACCOUNT_PHONENUMBER_TEXTBOX}    ${CREATE_ACCOUNT_PHONENUMBER_INVALID}
    #Check Subscribe checkbox
    Select Checkbox    ${CREATE_ACCOUNT_Subscribe to our newsletter!_CHECKBOX}
    Sleep    1s
    #Check TC PDPA
    Select Checkbox    ${CREATE_ACCOUNT_TC_PDPA_CHECKBOX}
    #Click on Create New Account Button
    Click Element    ${CREATE_ACCOUNT_BUTTON}
    #Verify Phone Number Error Message
    Wait Until Element Contains    ${CREATE_ACCOUNT_PHONENUMBER_ERROR}    ${CREATE_ACCOUNT_PHONENUMBER_INVALID_ERROR_TEXT}
    Sleep    1s
    Delete All Cookies
    Close Browser