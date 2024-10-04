*** Settings ***
Resource    ${CURDIR}/../keywords/import.robot

*** Test Cases ***
Tc-001 Verify text that in cart has only one product
    common_page.Open My demo Application
    main_shopping_page.Click product name sauce laps bacpack 1
    product_1_page.Click add to cart button
    common_page.Click cart icon
    my_cart_page.Check total item text     ${verify_text}

