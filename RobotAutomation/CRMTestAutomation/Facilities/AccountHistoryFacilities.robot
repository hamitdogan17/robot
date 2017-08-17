*** Settings ***
Resource          ../Utils/NavigateFunctions/Navigator.robot
Resource          ../Facilities/BaseCustomerFacilities.robot
Library           ExtendedSelenium2Library

*** Keywords ***
ClickSectionNameDropdownlist
    Select IFrame    id=contentIFrame1
    Wait And Click Element    id=jwl_sectionname_i
    Unselect Frame

ClickAndSelectSectionNameDropdownlist
    Select IFrame    id=contentIFrame1
    Wait And Click Element    id=jwl_sectionname
    Wait And Click Element    xpath=//select[@id='jwl_sectionname_i']/option[3]
    Unselect Frame
