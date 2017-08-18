*** Settings ***
Resource          ../Utils/NavigateFunctions/Navigator.robot
Resource          ../Facilities/BaseCustomerFacilities.robot
Library           ExtendedSelenium2Library

*** Keywords ***
ClickLookForSelectField
    Select IFrame    id=contentIFrame0
    Wait And Click Element    xpath=//div[@id='SimpleSearch']/table/tbody/tr/td[2]
    Unselect Frame

CheckSelectFieldOptions
    Select IFrame    id=contentIFrame0
    Wait And Click Element    xpath=//div[@id='SimpleSearch']/table/tbody/tr/td[2]/select/option[3]
    Unselect Frame

SendIndvFirstNameAndSearch
    Select IFrame    id=contentIFrame0
    Wait And Click Element    id=SearchText
    send text to element    id=SearchText    flat
    Wait And Click Element    xpath=//a[@onclick=' doSimpleSearch() ']
    Unselect Frame
