*** Settings ***
Resource          ../Utils/NavigateFunctions/Navigator.robot
Resource          ../Facilities/BaseCustomerFacilities.robot
Library           ExtendedSelenium2Library

*** Keywords ***
ClickNewIndividual
    Wait And Click Element    id=contact|NoRelationship|HomePageGrid|Mscrm.HomepageGrid.contact.NewRecord

CreateIndividualForm
    Select IFrame    id=contentIFrame1
    Wait And Click Element    id=firstname
    send text to element    id=firstname_i    Test
    Wait And Click Element    id=lastname
    send text to element    id=lastname_i    Test
    Wait And Click Element    id=mobilephone1
    send text to element    id=mobilephone1_i    12345678912345
    Wait And Click Element    id=emailaddress11
    send text to element    id=emailaddress11_i    a@anet.net
    Wait And Click Element    id=etel_customeraddresstypecode
    Wait And Click Element    xpath=//select[@id='etel_customeraddresstypecode_i']/option[2]
    Wait And Click Element    id=address1_line1
    send text to element    id=address1_line1_i    Address1
    Comment    Wait And Click Element    id=savefooter_statuscontrol
    Unselect Frame

ClickNewCorporate
    Wait And Click Element    id=account|NoRelationship|HomePageGrid|Mscrm.HomepageGrid.account.NewRecord

CreateCorporateForm
    Select IFrame    id=contentIFrame1
    Wait And Click Element    id=name
    send text to element    id=name_i    Robot Test
    Comment    Wait And Click Element    id=savefooter_statuscontrol
    Unselect Frame
