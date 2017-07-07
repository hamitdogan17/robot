*** Settings ***
Library           Collections
Library           String
Resource          ${CURDIR}/Variables.robot

*** Keywords ***
Launch Browser
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    maximize browser window

wait for home page
    [Arguments]    ${elementName}
    Wait Until Keyword Succeeds    30 sec    1 sec    Page Should Contain Element    ${elementName}
    Log    Homepage is viewed    level=WARN
    Capture Page Screenshot

wait for element
    [Arguments]    ${element}    ${timeout}=20 sec    ${interval}=1 sec
    Wait Until Keyword Succeeds    ${timeout}    ${interval}    Page Should Contain Element    ${element}

click on element
    [Arguments]    ${element}
    Click Element    ${element}

Wait And Click Element
    [Arguments]    ${element}    ${timeout}=20 sec    ${interval}=1 sec
    wait for element    ${element}    ${timeout}    ${interval}
    click on element    ${element}

click text if exists
    [Arguments]    ${text1}=    ${text2}=    ${text3}=    ${text4}=    ${text5}=    ${text6}=
    ...    ${text7}=    ${text8}=    ${text9}=    ${text10}=
    : FOR    ${i}    IN RANGE    1    10
    \    ${status}    ${value}=    Run Keyword And Ignore Error    Page Should Contain Element    name=${text${i}}
    \    Run keyword if    '${status}'=='PASS'    Click Element    name=${text${i}}
    \    Run keyword if    '${status}'=='PASS'    log    clicked on ${text${i}}    level=WARN
    \    Exit For Loop If    '${status}'=='PASS'

switch windows
    [Arguments]    ${windowNumber}    @{windowNames}
    Get Window Names    select window    name=@{windowNames}[${windowNumber}]

wait for element by xpath
    [Arguments]    ${element}    ${timeout}=20 sec    ${interval}=1 sec
    Wait Until Keyword Succeeds    ${timeout}    ${interval}    Page Should Contain Element    xpath=${element}

click on element by xpath
    [Arguments]    ${element}
    Click Element    xpath=${element}

Wait And Click Element By Xpath
    [Arguments]    ${element}    ${timeout}=20 sec    ${interval}=1 sec
    wait for element by xpath    xpath=${element}    ${timeout}    ${interval}
    click on element by xpath    xpath=${element}

Wait And Send Text
    [Arguments]    ${element}    ${text}    ${timeout}=20 sec    ${interval}=1 sec
    wait for element    ${element}    ${timeout}    ${interval}
    send text to element    ${element}    ${text}

send text to element
    [Arguments]    ${element}    ${text}
    Input Text    ${element}    ${text}
