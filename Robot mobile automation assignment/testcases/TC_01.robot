*** Settings ***
Resource    ${CURDIR}/../keywords/import.robot
Test Setup        common.Open my demo application
Test Teardown    AppiumLibrary.Close Application
*** Test Cases ***
Tc-001 Verify text that in cart has only one product
    # common.Open my demo application
    main_shopping_page.Click product name sauce laps bacpack
    product_page.Click add to cart button
    cart_bar_page.Click cart icon then page should cart page
    my_cart_page.Check total item text     ${testdata.verify_text}
