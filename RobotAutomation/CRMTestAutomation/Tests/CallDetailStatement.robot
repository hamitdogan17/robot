*** Settings ***
Resource          ../Resources/MainFunctions.robot
Resource          ../Resources/Variables.robot
Library           ExtendedSelenium2Library
Library           Collections
Library           RequestsLibrary
Library           Process
Resource          ../Facilities/BaseCustomerFacilities.robot
Resource          ../Facilities/CustomerFacilities.robot
Resource          ../Utils/NavigateFunctions/Navigator.robot
Resource          ../Facilities/AccountHistoryFacilities.robot
Resource          ../Facilities/SubscriptionFacilities.robot

*** Test Cases ***
124-CallDetailStatementFunctionalRequirementsCorp
    Go to CRM
    Go to Spesific Corporate Customer    soner corp
    OpenAccountSummaryPage
    StartBISafely
    GoToSubsDetailForSelectedCorp
    OpenCallDetailStatement
    Comment    //adres hatası var
