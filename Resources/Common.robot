*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Start Web Test
    Open Browser  about:blank  ${BROWSER}

End Web Test
    Close Browser