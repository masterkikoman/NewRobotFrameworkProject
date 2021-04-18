*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Shopping Cart Page
    wait until page contains  Shopping-cart summary

Proceed to checkout
    execute javascript  window.scrollTo(0,1000)
    ${ele01}  get webelement  //*[@class='button btn btn-default standard-checkout button-medium']
    Execute Javascript    arguments[0].click();     ARGUMENTS    ${ele01}


