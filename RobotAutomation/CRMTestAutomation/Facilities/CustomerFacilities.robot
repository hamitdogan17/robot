*** Settings ***
Resource          ../Utils/NavigateFunctions/Navigator.robot
Library           ExtendedSelenium2Library

*** Keywords ***
StartBISafetly
    Wait And Click Element    id=Stop
    Comment    Run Keyword If    xpath=//button[@id='Start']
    Wait And Click Element    id=Start
