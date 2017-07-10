*** Settings ***
Resource          ../Utils/NavigateFunctions/Navigator.robot
Resource          ../Facilities/BaseCustomerFacilities.robot
Library           ExtendedSelenium2Library

*** Keywords ***
StartBISafetly
    Wait And Click Element    id=stop
    Sleep    5s
    Select IFrame    id=contentIFrame0
    Select IFrame    id=WebResource_biheader
    Wait And Click Element    id=start
