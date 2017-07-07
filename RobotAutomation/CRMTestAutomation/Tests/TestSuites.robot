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
<<<<<<< HEAD
    Open Browser    ${CRM_URL}    ie
=======
    Open Browser    ${CRM_URL}    ff
>>>>>>> 5f5816b460d9ae9949f742d012c7dbad85597623
    Go To First Corporate Customer

*** Keywords ***
