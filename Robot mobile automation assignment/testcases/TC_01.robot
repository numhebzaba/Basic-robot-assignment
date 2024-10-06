*** Settings ***
Resource    ${CURDIR}/../keywords/import.robot
*** Test Cases ***
Tc-001 Verify text that in cart has only one product
    common.Open My demo Application
    main_shopping_page.Click product name sauce laps bacpack
    product_page.Click add to cart button
    topbar_page.Click cart icon then page should cart page
    my_cart_page.Check total item text     ${testdata.verify_text}
