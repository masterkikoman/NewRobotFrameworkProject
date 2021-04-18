*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify payment method page load
    wait until page contains  Please choose your payment method

Select Bankwire
    execute javascript  window.scrollTo(0,500)
    ${ele02}  get webelement  //*[@class='bankwire']
    Execute Javascript    arguments[0].click();     ARGUMENTS    ${ele02}