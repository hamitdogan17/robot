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
