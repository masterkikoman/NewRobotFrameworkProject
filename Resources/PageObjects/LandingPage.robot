*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Load Page
    # URL = http://automationpractice.com/
    go to   ${URL}
    Sleep  3s

Input Text in Search box
    #SEARCH = #blouse
    Input Text  id=search_query_top  ${SEARCH}
    Sleep  3s

Click Search Button
    click button  xpath=//*[@name='submit_search']

Sign in
    ${ele}  get webelement  xpath=//*[@class='login']
    Execute Javascript    arguments[0].click();     ARGUMENTS    ${ele}
    Sleep  5s