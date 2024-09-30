*** Settings ***
Resource    ../keywords/import.robot
*** Test Cases ***
TC-001 Register
    common.Open training platform doppio website
    main_page.Click user icon 
    login_page.Click sign up button for register
    Click sign up button

    register_page.Input username on register page    ${testdata.username}
    register_page.Input password on register page    ${testdata.password}
    register_page.Input confirm password on register page    ${testdata.confirm_password}
    register_page.Click sign up button
    register_page.Click OK pop up after register successfully


    Sleep    2s
TC-002 Login
    common.Open training platform doppio website
    main_page.Click user icon

    login_page.Input username on login page    ${testdata.username}
    login_page.Input password on login page    ${testdata.password}
    login_page.Click Login button
    login_page.Click OK pop up after login successfully

    main_page.In put keyword into search bar    ${testdata.keyword}
    main_page.Click search icon
    main_page.Click phone

    product_page.Click add to cart button
    product_page.Click OK pop up after add product successfully
    product_page.Click cart icon

    delivery_info_page.Input name on delivery info page    ${testdata.name}
    delivery_info_page.Input surname on delivery info page    ${testdata.surname}
    delivery_info_page.Input shipping address on delivery info page    ${testdata.shipping_address}
    delivery_info_page.Input phone number on delivery info page    ${testdata.phone_number}
    delivery_info_page.Click pay button

    payment_page.Click pay button
    payment_page.Input credit card number on payment page    ${testdata.credit_card_number}
    payment_page.Input expiration date on payment page    ${testdata.credit_card_exp}
    payment_page.Input cv code on payment page    ${testdata.credit_card_cv}
    payment_page.Input card owner on payment page    ${testdata.credit_card_owner}
    payment_page.Click confirm payment button
    payment_page.Click OK pop up after payment successfully
    payment_page.Click continue shopping

    main_page.Click user icon
    account_page.Click preparing to see order should be created
    account_page.Check order status
    Sleep    2s

    


