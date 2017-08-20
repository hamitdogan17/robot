*** Settings ***
Resource          ../Utils/NavigateFunctions/Navigator.robot
Resource          ../Facilities/BaseCustomerFacilities.robot
Library           ExtendedSelenium2Library

*** Keywords ***
ClickResetCallBarringPassword
    ClickMoreCommand
    Wait And Click Element    id=etel_subscription|NoRelationship|Form|jwl.etel_subscription.ResetCallBarring.Button
    Sleep    5s
    send text to element    id=    \\13
