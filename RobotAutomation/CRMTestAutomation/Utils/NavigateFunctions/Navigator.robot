*** Settings ***
Library           ExtendedSelenium2Library
Resource          ../../Resources/MainFunctions.robot
Resource          ../../Facilities/BaseCustomerFacilities.robot
Resource          NavigatorVariables.txt

*** Keywords ***
Go to CRM
    Open Browser    ${CRM_URL}    ${IE_BROWSER}
    Maximize Browser Window
    Select IFrame    id=InlineDialog_Iframe
    Wait And Click Element    id=buttonClose
    Unselect Frame

GoToCustomerSearch
    Wait And Click Element    ${MainLink}
    Wait And Click Element    ${ServiceMenuTabButton}
    Wait And Click Element    ${ServiceToCustomerSearch}

GoToCorporateCustomersList
    Wait And Click Element    ${MainLink}
    Wait And Click Element    ${ServiceMenuTabButton}
    Wait And Click Element    ${ServiceToCorporate}

GoToIndividualCustomersList
    Wait And Click Element    ${MainLink}
    Wait And Click Element    ${ServiceMenuTabButton}
    Wait And Click Element    ${ServiceToIndividual}

GoToCases
    Wait And Click Element    ${MainLink}
    Wait And Click Element    ${ServiceMenuTabButton}
    Wait And Click Element    ${ServiceToCases}

GoToSubscriptions
    Wait And Click Element    ${MainLink}
    Wait And Click Element    ${SalesMenuTabButton}
    Wait And Click Element    ${SalesToSubscriptions}

OpenIndividualCustomerViewPage
    Select IFrame    id=contentIFrame1
    Wait And Click Element    id=formSelectorDropdown
    Wait And Click Element    ${OpenIndividualCustomer}
    Unselect Frame

OpenCorporateCustomerViewPage
    Select IFrame    id=contentIFrame1
    Wait And Click Element    id=formSelectorDropdown
    Wait And Click Element    ${OpenCorporateCustomerView}
    Unselect Frame

OpenCustomerDataPage
    Select IFrame    id=contentIFrame1
    Wait And Click Element    id=formSelectorDropdown
    Wait And Click Element    ${OpenCustomerData}
    Unselect Frame

OpenAccountSummaryPage
    Select IFrame    id=contentIFrame1
    Wait And Click Element    id=header_crmFormSelector
    Wait And Click Element    ${OpenAccountSummary}
    Unselect Frame

OpenMonetaryTransactionsPage
    Select IFrame    id=contentIFrame1
    Wait And Click Element    id=header_crmFormSelector
    Wait And Click Element    ${OpenMonetaryTransactions}
    Unselect Frame

OpenBillingForCorporatePage
    Select IFrame    id=contentIFrame1
    Wait And Click Element    id=formSelectorDropdown
    Wait And Click Element    ${OpenBillingForCorporate}
    Unselect Frame

OpenCustomer360Page
    Select IFrame    id=contentIFrame1
    Wait And Click Element    id=header_crmFormSelector
    Wait And Click Element    ${OpenCustomer360}
    Unselect Frame

OpenBillingAndPaymentPage
    Select IFrame    id=contentIFrame1
    Wait And Click Element    id=formSelectorDropdown
    Wait And Click Element    ${OpenBillingAndPayment}
    Unselect Frame

OpenCustomer360BlacklistPage
    Select IFrame    id=contentIFrame1
    Wait And Click Element    id=header_crmFormSelector
    Wait And Click Element    ${OpenCustomer360BlackList}
    Unselect Frame

OpenAccountHistory
    [Arguments]    ${type}
    Comment    Run keyword if    '${type}'=='corporate'    Wait And Click Element    ${OpenAccountHistoryButtonCorp}
    Comment    Run keyword if    '${type}'=='individual'    Wait And Click Element    ${OpenAccountHistoryButtonIndv}
    Wait And Click Element    id=etel_subscription|NoRelationship|Form|jwl.etel_subscription.Actions.Button
    Wait And Click Element    id=etel_subscription|NoRelationship|Form|jwl.etel_subscription.BI.Button
    Comment    Select IFrame    id=contentIFrame1
    Wait And Click Element    id=etel_subscription|NoRelationship|Form|jwl.etel_subscription.AccountHistory.Button

OpenAccHistoryFromSubsPage
    ClickMoreCommand
    Wait And Click Element    ${OpenAccountHistoryButtonSubs}

ClickMoreCommand
    Wait And Click Element    id=moreCommands

OpenAccountHistoryCorp
    Wait And Click Element    id=account|NoRelationship|Form|jwl.account.Actions.Button
    Wait And Click Element    id=account|NoRelationship|Form|jwl.account.BI.Button
    Comment    Select IFrame    id=contentIFrame1
    Wait And Click Element    id=account|NoRelationship|Form|jwl.account.AccountHistory.Button

OpenAccountHistoryIndv
    Wait And Click Element    id=contact|NoRelationship|Form|jwl.contact.Actions.Button
    Wait And Click Element    id=contact|NoRelationship|Form|jwl.contact.BI.Button
    Comment    Select IFrame    id=contentIFrame1
    Wait And Click Element    id=contact|NoRelationship|Form|jwl.contact.AccountHistory.Button
