*** Settings ***
Resource          ../Resources/MainFunctions.robot
Resource          ../Resources/Variables.robot
Library           ExtendedSelenium2Library
Library           Collections
Library           RequestsLibrary
Library           Process
Resource          ../Facilities/BaseCustomerFacilities.robot
Resource          ../Facilities/CustomerFacilities.robot

*** Variables ***

*** Test Cases ***
CrmDemo
    Open Browser    ${CRM_URL}    ${IE_BROWSER}
    Go to Spesific Corporate Customer    CS
    Comment    Press Key    \    \\13
    OpenAccountSummaryPage
    StartBISafetly

*** Keywords ***
