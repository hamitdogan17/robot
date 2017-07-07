*** Settings ***
Resource          ../Resources/MainFunctions.robot
Resource          ../Resources/Variables.robot
Library           ExtendedSelenium2Library
Library           Collections
Library           RequestsLibrary
Library           Process
Resource          ../Facilities/BaseCustomerFacilities.robot

*** Variables ***

*** Test Cases ***
CrmDemo
    Open Browser    ${CRM_URL}    ff
    Go To First Corporate Customer
    Go To First Corporate Customer

*** Keywords ***
