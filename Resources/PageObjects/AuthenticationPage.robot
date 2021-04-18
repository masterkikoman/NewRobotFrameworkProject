*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Authentication Page Load
    wait until page contains  Authentication

Input Email Address
    input text  id=email  ${EMAIL}

Input Password
    input text  id=passwd  ${PWORD}

Click Submit
    click button  id=SubmitLogin

