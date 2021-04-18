*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Order Confirmation
    wait until page contains element  xpath=/html/body/div/div[2]/div/div[3]/div/h1