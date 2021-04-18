*** Settings ***
Resource  ../Resources/PageObjects/AddressPage.robot
Resource  ../Resources/PageObjects/AuthenticationPage.robot
Resource  ../Resources/PageObjects/LandingPage.robot
Resource  ../Resources/PageObjects/OrderConfirmationPage.robot
Resource  ../Resources/PageObjects/OrderSummaryPage.robot
Resource  ../Resources/PageObjects/PaymentMethodPage.robot
Resource  ../Resources/PageObjects/ProductPage.robot
Resource  ../Resources/PageObjects/SearchResultPage.robot
Resource  ../Resources/PageObjects/ShippingPage.robot
Resource  ../Resources/PageObjects/ShoppingCartSummaryPage.robot

*** Keywords ***

Open Website
    LandingPage.Load Page

Click Sign In
    LandingPage.Sign In

Search for Products
    LandingPage.Load Page
    LandingPage.Input Text in Search box
    LandingPage.Click Search Button

Adding to cart
    SearchResultPage.Click Product Image
    ProductPage.Add to cart
    ProductPage.Product Added Successfully

Proceed to Checkout
    ProductPage.Proceed to checkout
    ShoppingCartSummaryPage.Verify Shopping Cart Page
    ShoppingCartSummaryPage.Proceed to checkout
    AuthenticationPage.Verify Authentication Page Load

Logging your account
    AuthenticationPage.Input Email Address
    AuthenticationPage.Input Password
    AuthenticationPage.Click Submit

Address verification
    AddressPage.Proceed To Checkout

Choose Shipping Option
    #select checkbox  id=cgv
    ShippingPage.Click checkbox
    ShippingPage.Proceed to checkout
    PaymentMethodPage.Verify payment method page load

Choose Payment Option
    PaymentMethodPage.Select Bankwire
    OrderSummaryPage.Verify Order Summary Page
    OrderSummaryPage.Select Confirm Order


Order Confirmation
    OrderConfirmationPage.Verify Order Confirmation
