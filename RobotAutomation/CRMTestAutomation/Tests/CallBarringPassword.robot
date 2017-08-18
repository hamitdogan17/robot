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
569-ResetCallBarringPasswordFromSubscriptionPanel !!!! popup buraya
    Go to CRM
    Go To Spesific Individual Customer    flat customer2
    OpenAccountSummaryPage
    GoToSubsDetailForSelectedIndv
    CallBarringPassword.ClickResetCallBarringPassword
