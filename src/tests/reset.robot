*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Test Setup  Reset Counter To Zero
Suite Teardown  Close Browser

*** Test Cases ***
When counter has nonzero value and is reset counter is 0
    Go To  ${HOME_URL}
    Click  button >> text=Paina
    Click  button >> text=Paina
    Click  button >> text=Nollaa
    Get Text  body  *=  nappia painettu 0 kertaa