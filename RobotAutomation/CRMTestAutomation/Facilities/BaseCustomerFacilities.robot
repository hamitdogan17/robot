*** Settings ***
Resource          ../Utils/NavigateFunctions/Navigator.robot
Library           ExtendedSelenium2Library

*** Keywords ***
Go To First Corporate Customer
    GoToCorporateCustomersList
    Select IFrame    id=contentIFrame0
    Wait And Click Element    xpath=//table[@id='gridBodyTable']/tbody/tr/td[3]/nobr/a

Select IFrame
    [Arguments]    ${element}
    wait for element    ${element}
    Select Frame    ${element}

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
    Wait And Click Element    xpath=//table[@id='gridBodyTable']/tbody/tr/td[3]/nobr/a
