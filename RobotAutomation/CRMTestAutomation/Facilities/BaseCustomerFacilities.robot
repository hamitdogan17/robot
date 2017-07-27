*** Settings ***
Resource          ../Utils/NavigateFunctions/Navigator.robot
Library           ExtendedSelenium2Library

*** Keywords ***
Select IFrame
    [Arguments]    ${element}
    wait for element    ${element}
    Select Frame    ${element}

Go To First Corporate Customer
    GoToCorporateCustomersList
    Select IFrame    id=contentIFrame0
    Wait And Click Element    xpath=//table[@id='gridBodyTable']/tbody/tr/td[3]/nobr/a

Go To First Individual Customer
    GoToIndividualCustomersList
    Select IFrame    id=contentIFrame0
    Wait And Click Element    xpath=//table[@id='gridBodyTable']/tbody/tr/td[2]/nobr/a

Go To Spesific Individual Customer
    [Arguments]    ${Customer}    # Customer name
    GoToIndividualCustomersList
    Select IFrame    id=contentIFrame0
    Wait And Click Element    id=crmGrid_findCriteria
    send text to element    id=crmGrid_findCriteria    ${Customer}
    Press Key    id=crmGrid_findCriteria    \\13
    Wait And Click Element    xpath=//table[@id='gridBodyTable']/tbody/tr/td[3]/nobr/a

Go to Spesific Corporate Customer
    [Arguments]    ${Customer}
    GoToCorporateCustomersList
    Select IFrame    id=contentIFrame0
    Wait And Click Element    id=crmGrid_findCriteria
    send text to element    id=crmGrid_findCriteria    ${Customer}
    Press Key    id=crmGrid_findCriteria    \\13
    Comment    Wait And Click Element    xpath=//table[@id='gridBodyTable']/tbody/tr/td[3]/nobr/a
    wait for element    xpath=//table[@id='gridBodyTable']/tbody/tr/td[3]/nobr/a
    Click Element    xpath=//table[@id='gridBodyTable']/tbody/tr/td[3]/nobr/a    skip_ready=${true}

Go To Subscription With Status
    [Arguments]    ${customerType}    ${status}
    GoToSubscriptions
    Sleep    10s
    Select IFrame    id=contentIFrame1
    Wait And Click Element    xpath=//div[@id='filterButton']/a/img
    Run Keyword If    "${customerType}" == "individual"    Wait And Click Element    id=lookupFilterPopupcrmGridetel_subscriptionetel_individualcustomerid
    Wait And Click Element    xpath=//span[@title='Contains Data']
