*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Click Product Image
    click image  xpath=//img[@title='Blouse']
