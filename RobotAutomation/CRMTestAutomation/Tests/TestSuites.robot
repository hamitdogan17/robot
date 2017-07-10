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

*** Variables ***

*** Test Cases ***
CrmDemo
    Go to CRM
    Go to Spesific Corporate Customer    CS
    Comment    Press Key    \    \\13
    OpenAccountSummaryPage
    StartBISafetly

Confirm Action Test
    Go to CRM
    #Go to Spesific Corporate Customer metodunun içine bak
    #Anladığım kadarıyla windows popup gelmeden önce tıklatacağın elementin yanına parametre olarak skip_ready=${true} ekliyorsun
    Go to Spesific Corporate Customer    CS
    Comment    Confirm Action
    StartBISafetly
    OpenBillingPage

Alper Deneme
    Go to CRM
    Go To First Individual Customer
    OpenAccountSummaryPage
    StartBISafetly

*** Keywords ***
