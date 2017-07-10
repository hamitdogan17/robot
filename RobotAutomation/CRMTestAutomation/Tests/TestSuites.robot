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

Confirm Action Test
    Open Browser    ${CRM_URL}    ${IE_BROWSER}
    Maximize Browser Window
    #Go to Spesific Corporate Customer metodunun içine bak
    #Anladığım kadarıyla windows popup gelmeden önce tıklatacağın elementin yanına parametre olarak skip_ready=${true} ekliyorsun
    Go to Spesific Corporate Customer    CS
    Confirm Action
    Select IFrame    id=contentIFrame1
    Select IFrame    id=WebResource_biheader
    StartBISafetly

*** Keywords ***
