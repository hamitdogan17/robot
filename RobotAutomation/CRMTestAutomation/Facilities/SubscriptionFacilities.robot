*** Settings ***
Resource          ../Utils/NavigateFunctions/Navigator.robot
Resource          ../Facilities/BaseCustomerFacilities.robot
Library           ExtendedSelenium2Library

*** Keywords ***
OpenAccHistoryFromSubsPage
    ClickMoreCommand
    Wait And Click Element    ${OpenAccountHistoryButtonSubs}

OpenCallDetailStatement
    ClickMoreCommand
    Wait And Click Element    id=etel_subscription|NoRelationship|Form|jwl.etel_subscription.CallDetailStatement.Button
