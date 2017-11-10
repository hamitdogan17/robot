*** Settings ***
Resource          ../Utils/NavigateFunctions/Navigator.robot
Resource          ../Facilities/BaseCustomerFacilities.robot
Library           ExtendedSelenium2Library

*** Keywords ***
StartBISafely
    Select IFrame    id=contentIFrame1
    Select IFrame    id=WebResource_biheader
    Wait And Click Element    id=stop
    Sleep    5s
    Wait And Click Element    id=start
    Unselect Frame
    Unselect Frame

SelectSubsInIndvCustPage
    Select IFrame    id=contentIFrame1
    Wait And Click Element    xpath=//div[@id='Subscription_divDataArea']/div/table/tbody/tr/td[4]
    Unselect Frame

SelectSubsInCorpCustPage
    Select IFrame    id=contentIFrame1
    Comment    Scroll Element Into View    id=Subscription_divDataArea
    Scroll Element Into View    id=subscriptions_header_h2
    Wait And Click Element    id=subscriptions_header_h2
    Wait And Click Element    xpath=//div[@id='Subscription_divDataArea']/div/table/tbody/tr/td[2]
    Unselect Frame

GoToSubsDetailForSelectedIndv
    Select IFrame    id=contentIFrame1
    Scroll Element Into View    id=Subscription_divDataArea
    Wait And Click Element    xpath=//div[@id='Subscription_divDataArea']/div/table/tbody/tr/td[2]/nobr/a
    Unselect Frame

GoToSubsDetailForSelectedCorp
    Select IFrame    id=contentIFrame1
    Scroll Element Into View    id=Subscription_divDataArea
    Wait And Click Element    xpath=//div[@id='Subscription_divDataArea']/div/table/tbody/tr[4]/td[2]/nobr/a
    Unselect Frame

ChangeLanguage
    Sleep    10s
    Select IFrame    id=contentIFrame1
    Wait And Click Element    id=etel_languagecode
    Wait And Click Element    xpath=//select[@id='etel_languagecode_i']/option[3]
    Wait And Click Element    id=savefooter_statuscontrol
    Unselect Frame

ClickStartBI
    Select IFrame    id=contentIFrame1
    Select IFrame    id=WebResource_biheader
    Wait And Click Element    id=start
    Unselect Frame
    Unselect Frame
