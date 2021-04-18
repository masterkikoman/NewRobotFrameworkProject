*** Settings ***
Documentation  New Robot Framework Project
Resource  ../Resources/UserTasks.robot
Resource  ../Resources/Common.robot


# Test Setup and Tear down
Test Setup  Start Web Test
Test Teardown  End Web Test

*** Variables ***
${BROWSER} =    ff
${URL} =    http://automationpractice.com/
${SEARCH} =    blouse
${EMAIL} =  testordermyass@yopmail.com
${PWORD} =  test123

*** Test Cases ***
User must be able to order item
    [Documentation]  End to End test Happy Path
    [Tags]  End to End
    UserTasks.Search for Products
    UserTasks.Adding to cart
    UserTasks.Proceed to Checkout
    UserTasks.Logging your account
    UserTasks.Address verification
    UserTasks.Choose Shipping Option
    UserTasks.Choose Payment Option
    UserTasks.Order Confirmation

User Search for products
    [Documentation]  Searching for Products
    [Tags]  Smoke
    UserTasks.Search for Products

Sign In Scenario
    [Documentation]    Authentication Scenario
    [Tags]    SignIn
    UserTasks.Open Website
    UserTasks.Click Sign In
    UserTasks.Logging your account





