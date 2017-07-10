*** Settings ***
Resource          ../Utils/NavigateFunctions/Navigator.robot
Resource          ../Facilities/BaseCustomerFacilities.robot
Library           ExtendedSelenium2Library

*** Keywords ***
StartBISafely
    Select IFrame    id=contentIFrame1
    Select IFrame    id=WebResource_biheader
    Wait And Click Element    id=stop
    Sleep    5s
    Wait And Click Element    id=start
    Unselect Frame
