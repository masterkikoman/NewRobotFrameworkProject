*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Add to cart
    click button  name=Submit

Product Added Successfully
    wait until page contains  Product successfully added to your shopping cart
    Sleep  3s

Proceed to checkout
    ${ele00}  get webelement  //*[@title='Proceed to checkout']
    Execute Javascript    arguments[0].click();     ARGUMENTS    ${ele00}