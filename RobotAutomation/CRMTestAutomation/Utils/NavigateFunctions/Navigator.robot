*** Settings ***
Library           ExtendedSelenium2Library
Resource          ../../Resources/MainFunctions.robot
Resource          NavigatorVariables.txt

*** Keywords ***
GoToCorporateCustomersList
    Wait And Click Element    ${MainLink}
    Wait And Click Element    ${ServiceMenuTabButton}
    Wait And Click Element    ${ServiceToCorporate}

GoToIndividualCustomersList
    Wait And Click Element    ${MainLink}
    Wait And Click Element    ${ServiceMenuTabButton}
    Wait And Click Element    ${ServiceToIndividual}

GoToCustomerSearch
    Wait And Click Element    ${MainLink}
    Wait And Click Element    ${ServiceMenuTabButton}
    Wait And Click Element    ${ServiceToCustomerSearch}

GoToCases
    Wait And Click Element    ${MainLink}
    Wait And Click Element    ${ServiceMenuTabButton}
    Wait And Click Element    ${ServiceToCases}

GoToSubscriptions
    Wait And Click Element    ${MainLink}
    Wait And Click Element    ${SalesMenuTabButton}
    Wait And Click Element    ${SalesToSubscriptions}
