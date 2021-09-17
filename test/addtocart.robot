*** Settings ***

Library			seleniumlibrary
Resource 		../../dananjohel/commons/DriverBuilder.robot
Resource 		../../dananjohel/pages/homepage.robot
Resource 		../../dananjohel/pages/clp.robot
Resource		../../dananjohel/pages/plp.robot
Resource		../../dananjohel/pages/havenpdp.robot
Resource		../../dananjohel/pages/cart.robot
Resource		../../dananjohel/pages/shipping.robot
Resource		../../dananjohel/pages/payment.robot
Resource		../../dananjohel/pages/ordersum.robot
Test Setup 		DriverBuilder.Open Browser to the Home pages	https://us.qa.commerce.simplisafe.com/
Test Teardown	DriverBuilder.Close Website

*** Test Cases ***
REG_01 - Verify User is able to open Homepage
#blablabla
	homePage.Verify Simplisafe Homepage
	homePage.Verify Shop Now Button
	homePage.Click Shop Now Button
	clp.Verify CLP
	clp.Verify Shop Packages Button
	clp.Click Shop Packages Button
	plp.Verify Package
	plp.Verify See Details Button on Haven Product
	plp.Click See Details Button on Haven Product
	havenpdp.Verify Haven PDP
	havenpdp.Verify Add To Cart Button on Haven Product
	havenpdp.Click Add To Cart Button on Haven Product
	cart.Verify Package
	cart.Verify Monitoring Plan
	cart.Verify Shipping Placeholder
	cart.Verify Promo Code
	cart.Verify Subtotal
	cart.Verify Secure Checkout Button
	cart.Click Secure Checkout Button
	shipping.Verify Order Summary
	shipping.Enter Fields
	shipping.Click Next Payment Button
	payment.Verify Payment Page
	payment.Enter Fields
	payment.Verify Submit Button
	payment.Click Submit Button
	ordersum.Verify Order Summary Page
	ordersum.Verify Back To Home Page Button
	ordersum.Click Back To Home Page Button
	homepage.Verify Simplisafe Homepage