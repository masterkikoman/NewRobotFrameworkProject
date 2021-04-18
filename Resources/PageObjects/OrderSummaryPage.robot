*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Order Summary Page
    wait until page contains  Order summary

Select Confirm Order
    click button  xpath=//*[@class='button btn btn-default button-medium']