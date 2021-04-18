*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Click checkbox
#    execute javascript  window.scrollTo(0,300)
    select checkbox  id=cgv

Proceed to checkout
    click button  name=processCarrier
