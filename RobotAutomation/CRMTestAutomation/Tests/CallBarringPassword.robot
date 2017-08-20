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
Resource          ../Facilities/CallBarringPassword.robot

*** Test Cases ***
!!!! 569-ResetCallBarringPasswordFromSubscriptionPanel
    Go to CRM
    Go To Spesific Individual Customer    flat customer2
    OpenAccountSummaryPage
    GoToSubsDetailForSelectedIndv
    CallBarringPassword.ClickResetCallBarringPassword

513-ResetCallBarringPasswordButton
    Go to CRM
    Go To Spesific Individual Customer    flat customer2
    OpenAccountSummaryPage
    GoToSubsDetailForSelectedIndv
    ClickMoreCommand
    Wait And Click Element    id=etel_subscription|NoRelationship|Form|jwl.etel_subscription.ResetCallBarring.Button

!!!! 101-ResetCallBarringBugFixCheck
    Go to CRM
    Go to Spesific Corporate Customer    soner corp
    OpenAccountSummaryPage
    GoToSubsDetailForSelectedCorp
    CallBarringPassword.ClickResetCallBarringPassword
