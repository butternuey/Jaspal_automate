*** Settings ***
Library    SeleniumLibrary
Resource   variables.robot
Resource   keywords.robot

*** Test Cases ***
#Create Account
Create_Account_TC_1: Verify User Able to Register successfully
    [Documentation]    User able to register successfully when fill in all mandatory field.
    Open Website
    Accept Cookies
    Create Account
    #Enter FIRSTNAME
    Input Text    ${CREATE_ACCOUNT_FIRSTNAME_TEXTBOX}    kittiya
    #Enter LASTNAME
    Input Text    ${CREATE_ACCOUNT_LASTNAME_TEXTBOX}    Thipathikeat
    #Enter EMAIL
    Input Text    ${CREATE_ACCOUNT_EMAIL_TEXTBOX}    bn.nuey.kittiya@gmail.com
    #Enter PASSWORD
    Input Text    ${CREATE_ACCOUNT_PASSWORD_TEXTBOX}    Bn12345678/
    #Enter PASSWORD Again
    Input Text    ${CREATE_ACCOUNT_RE_ENTER_PASSWORD_TEXTBOX}    Bn12345678/
    #Select DOB dropdown
    Click Element    ${CREATE_ACCOUNT_DOB_TEXTBOX}
    Sleep    1s
    #Select Year
    Select From List By Value    ${CREATE_ACCOUNT_DOB_YEAR_DROPDOWN}    1996
    Sleep    1s
    #Select Month (0=JAN, 1=FEB, 2=MAR, ...)
    Select From List By Value    ${CREATE_ACCOUNT_DOB_MONTH_DROPDOWN}    1
    Sleep    1s
    #Select Date
    Click Element    ${CREATE_ACCOUNT_DOB_DATE}
    Sleep    1s
    #Select Gender (4=MALE, 7=FEMALE, 10=NOT SPECCIFIED)
    Select From List By Value    ${CREATE_ACCOUNT_GENDER_DROPDOWN}    7
    #Enter ISD
    Input Text    ${CREATE_ACCOUNT_ISD_CODE_TEXTBOX}    66
    #Enter Phone Number (Started without 0)
    Input Text    ${CREATE_ACCOUNT_PHONENUMBER_TEXTBOX}    820252263
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
    Wait Until Page Contains Element    xpath=//div[@class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"]
    Click Element    ${CREATE_ACCOUNT_DOB_ICON}
    Sleep    1s
    #Select Gender (4=MALE, 7=FEMALE, 10=NOT SPECCIFIED)
    Click Element    xpath=//div[@class="control custom-select"]//select[@id="gender"]//option[contains(text(),"Please specify gender")]
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
    Wait Until Element Contains    xpath=//div[@class="field field-name-firstname required"]//div[@id="firstname-error"]    This is a required field.
    #Verify LASTNAME Error Message
    Wait Until Element Contains    xpath=//div[@class="field field-name-lastname required"]//div[@id="lastname-error"]    This is a required field.
    #Verify EMAIL Error Message
    Wait Until Element Contains    xpath=//div[@class="field required"]//div[@id="popup-email_address-error"]    This is a required field.
    #Verify PASSWORD Error Message
    Wait Until Element Contains    xpath=//div[@class="field password required"]//div[@id="password-error"]    This is a required field.
    #Verify Re-Enter Password Error Message
    Wait Until Element Contains    xpath=//div[@class="field password confirmation required"]//div[@id="password-confirmation-error"]    This is a required field.
    #Verify DOB Error Message
    Wait Until Element Contains    xpath=//div[@class="field required"]//div[@id="my_dob-error"]    This is a required field.
    #Verify Gender Error Message
    Wait Until Element Contains    xpath=//div[@class="field required"]//div[@id="gender-error"]    This is a required field.
    #Verify Phone Number Error Message
    Wait Until Element Contains    xpath=//div[@class="field field-phone_number telephone required"]//div[@id="phone_number-error"]    This is a required field.
    #Verify PDPA Checkbox Error Message
    Wait Until Element Contains    xpath=//div[@class="confirmation custom-checkbox required margin-bottom-20 control"]//div[@id="terms_conditions-error"]    Please check the checkbox to register into the MISTY MYNX site
    Delete All Cookies
    Close Browser

Create_Account_TC_3: Verify User Has to Fill All Mandatory Fields to Register
    [Documentation]    Does not select PDPA Checkbox to verify error text
    Open Website
    Accept Cookies
    Create Account
    #Enter FIRSTNAME
    Input Text    ${CREATE_ACCOUNT_FIRSTNAME_TEXTBOX}    kittiya
    #Enter LASTNAME
    Input Text    ${CREATE_ACCOUNT_LASTNAME_TEXTBOX}    Thipathikeat
    #Enter EMAIL
    Input Text    ${CREATE_ACCOUNT_EMAIL_TEXTBOX}    butternueybn@gmail.com
    #Enter PASSWORD
    Input Text    ${CREATE_ACCOUNT_PASSWORD_TEXTBOX}    Bn12345678/
    #Enter PASSWORD Again
    Input Text    ${CREATE_ACCOUNT_RE_ENTER_PASSWORD_TEXTBOX}    Bn12345678/
    #Select DOB dropdown
    Click Element    ${CREATE_ACCOUNT_DOB_TEXTBOX}
    Sleep    1s
    #Select Year
    Select From List By Value    ${CREATE_ACCOUNT_DOB_YEAR_DROPDOWN}    1996
    Sleep    1s
    #Select Month (0=JAN, 1=FEB, 2=MAR, ...)
    Select From List By Value    ${CREATE_ACCOUNT_DOB_MONTH_DROPDOWN}    1
    Sleep    1s
    #Select Date
    Click Element    ${CREATE_ACCOUNT_DOB_DATE}
    Sleep    1s
    #Select Gender (4=MALE, 7=FEMALE, 10=NOT SPECCIFIED)
    Select From List By Value    ${CREATE_ACCOUNT_GENDER_DROPDOWN}    7
    #Enter ISD
    Input Text    ${CREATE_ACCOUNT_ISD_CODE_TEXTBOX}    66
    #Enter Phone Number (Started without 0)
    Input Text    ${CREATE_ACCOUNT_PHONENUMBER_TEXTBOX}    820252263
    #Check Subscribe checkbox
    Select Checkbox    ${CREATE_ACCOUNT_Subscribe to our newsletter!_CHECKBOX}
    Sleep    1s
    #Click on Create New Account Button
    Click Element    ${CREATE_ACCOUNT_BUTTON}
    #Verify PDPA Checkbox Mandatory Message
    Wait Until Element Contains    xpath=//div[@class="confirmation custom-checkbox required margin-bottom-20 control"]//div[@id="terms_conditions-error"]    Please check the checkbox to register into the MISTY MYNX site
    Sleep    1s
    Delete All Cookies
    Close Browser

Create_Account_TC_4: Verify Password and Re-Enter Password Should Match
    [Documentation]    fill in Re-Enter Password field not same as Password field to verify error text.
    Open Website
    Accept Cookies
    Create Account
    #Enter FIRSTNAME
    Input Text    ${CREATE_ACCOUNT_FIRSTNAME_TEXTBOX}    kittiya
    #Enter LASTNAME
    Input Text    ${CREATE_ACCOUNT_LASTNAME_TEXTBOX}    Thipathikeat
    #Enter EMAIL
    Input Text    ${CREATE_ACCOUNT_EMAIL_TEXTBOX}    butternueybn@gmail.com
    #Enter PASSWORD
    Input Text    ${CREATE_ACCOUNT_PASSWORD_TEXTBOX}    Bn12345678/
    #Enter PASSWORD Again >> Not same as PASSWORD field
    Input Text    ${CREATE_ACCOUNT_RE_ENTER_PASSWORD_TEXTBOX}    Bn12345678//
    #Select DOB dropdown
    Click Element    ${CREATE_ACCOUNT_DOB_TEXTBOX}
    Sleep    1s
    #Select Year
    Select From List By Value    ${CREATE_ACCOUNT_DOB_YEAR_DROPDOWN}    1996
    Sleep    1s
    #Select Month (0=JAN, 1=FEB, 2=MAR, ...)
    Select From List By Value    ${CREATE_ACCOUNT_DOB_MONTH_DROPDOWN}    1
    Sleep    1s
    #Select Date
    Click Element    ${CREATE_ACCOUNT_DOB_DATE}
    Sleep    1s
    #Select Gender (4=MALE, 7=FEMALE, 10=NOT SPECCIFIED)
    Select From List By Value    ${CREATE_ACCOUNT_GENDER_DROPDOWN}    7
    #Enter ISD
    Input Text    ${CREATE_ACCOUNT_ISD_CODE_TEXTBOX}    66
    #Enter Phone Number (Started without 0)
    Input Text    ${CREATE_ACCOUNT_PHONENUMBER_TEXTBOX}    820252263
    #Check Subscribe checkbox
    Select Checkbox    ${CREATE_ACCOUNT_Subscribe to our newsletter!_CHECKBOX}
    Sleep    1s
    #Check TC PDPA
    Select Checkbox    ${CREATE_ACCOUNT_TC_PDPA_CHECKBOX}
    #Click on Create New Account Button
    Click Element    ${CREATE_ACCOUNT_BUTTON}
    #Verify Password error message
     #Verify Re-Enter Password Error Message
    Wait Until Element Contains    xpath=//div[@class="field password confirmation required"]//div[@id="password-confirmation-error"]    Your passwords don't match. Please verify and try again.
    Sleep    1s
    Delete All Cookies
    Close Browser

Create_Account_TC_5: Verify user can write only alphabtes in firstName and lastName
    [Documentation]    fill in Re-Enter Password field not same as Password field to verify error text.
    Open Website
    Accept Cookies
    Create Account
    #Enter FIRSTNAME
    Input Text    ${CREATE_ACCOUNT_FIRSTNAME_TEXTBOX}    kittiya1
    #Enter LASTNAME
    Input Text    ${CREATE_ACCOUNT_LASTNAME_TEXTBOX}    Thipathikeat1
    #Click on Create New Account Button
    Click Element    ${CREATE_ACCOUNT_BUTTON}
    #Verify FIRSTNAME Error Message
    Wait Until Element Contains    xpath=//div[@class="field field-name-firstname required"]//div[@id="firstname-error"]    Please use letters only (a-z or A-Z) in this field.
    #Verify LASTNAME Error Message
    Wait Until Element Contains    xpath=//div[@class="field field-name-lastname required"]//div[@id="lastname-error"]    Please use letters only (a-z or A-Z) in this field.
    Sleep    1s
    Delete All Cookies
    Close Browser

Create_Account_TC_6: Verify user should enter valid phone number
    [Documentation]    User enter phone number with A-Z or start with 0 
    Open Website
    Accept Cookies
    Create Account
    #Enter FIRSTNAME
    Input Text    ${CREATE_ACCOUNT_FIRSTNAME_TEXTBOX}    kittiya
    #Enter LASTNAME
    Input Text    ${CREATE_ACCOUNT_LASTNAME_TEXTBOX}    Thipathikeat
    #Enter EMAIL
    Input Text    ${CREATE_ACCOUNT_EMAIL_TEXTBOX}    butternueybn1@gmail.com
    #Enter PASSWORD
    Input Text    ${CREATE_ACCOUNT_PASSWORD_TEXTBOX}    Bn12345678/
    #Enter PASSWORD Again
    Input Text    ${CREATE_ACCOUNT_RE_ENTER_PASSWORD_TEXTBOX}    Bn12345678/
    #Select DOB dropdown
    Click Element    ${CREATE_ACCOUNT_DOB_TEXTBOX}
    Sleep    1s
    #Select Year
    Select From List By Value    ${CREATE_ACCOUNT_DOB_YEAR_DROPDOWN}    1996
    Sleep    1s
    #Select Month (0=JAN, 1=FEB, 2=MAR, ...)
    Select From List By Value    ${CREATE_ACCOUNT_DOB_MONTH_DROPDOWN}    1
    Sleep    1s
    #Select Date
    Click Element    ${CREATE_ACCOUNT_DOB_DATE}
    Sleep    1s
    #Select Gender (4=MALE, 7=FEMALE, 10=NOT SPECCIFIED)
    Select From List By Value    ${CREATE_ACCOUNT_GENDER_DROPDOWN}    7
    #Enter ISD
    Input Text    ${CREATE_ACCOUNT_ISD_CODE_TEXTBOX}    66
    #Enter Phone Number (Started without 0)
    Input Text    ${CREATE_ACCOUNT_PHONENUMBER_TEXTBOX}    0820252263s
    #Check Subscribe checkbox
    Select Checkbox    ${CREATE_ACCOUNT_Subscribe to our newsletter!_CHECKBOX}
    Sleep    1s
    #Check TC PDPA
    Select Checkbox    ${CREATE_ACCOUNT_TC_PDPA_CHECKBOX}
    #Click on Create New Account Button
    Click Element    ${CREATE_ACCOUNT_BUTTON}
    #Verify Phone Number Error Message
    Wait Until Element Contains    xpath=//div[@class="field field-phone_number telephone required"]//div[@id="phone_number-error"]    Please enter a valid number in this field.
    Sleep    1s
    Delete All Cookies
    Close Browser