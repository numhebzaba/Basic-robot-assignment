*** Settings ***
Resource    ${CURDIR}/../keywords/import.robot
Test Teardown    Close Browser

*** Test Cases ***
TC-001 Register
    common.Open training platform doppio website
    main_page.Click user icon 
    login_page.Click sign up button and should show register page
    register_page.Input username on register page    ${testdata.username}
    register_page.Input password on register page    ${testdata.password}
    register_page.Input confirm password on register page    ${testdata.confirm_password}
    register_page.Click sign up button
    register_page.Click OK pop up after register successfully

TC-002 login then order phone with credit card and check the order that was created
    common.Open training platform doppio website
    main_page.Click user icon
    login_feature.Log in and icon user should turn into green     username=${testdata.username}    password=${testdata.password}
    main_page.In put keyword into search bar    ${testdata.keyword}
    main_page.Click search icon then page should show search result
    main_page.Click phone product then should show product page

    product_page.Click add to cart button
    Sleep    0.25s
    product_page.Click OK pop up after add product successfully
    product_page.Click cart icon then should show delivery info page
    
    Sleep    0.25s
    delivery_info_feature.Input user info on delivery info page    name=${testdata.name}    
    ...    surname=${testdata.surname}    
    ...    shipping_address=${testdata.shipping_address}    
    ...    phone_number=${testdata.phone_number}    

    payment_feature.Input user's credit card info on payment page    credit_card_number=${testdata.credit_card_number}    
    ...    credit_card_exp=${testdata.credit_card_exp}    
    ...    credit_card_cv=${testdata.credit_card_cv}    
    ...    credit_card_owner=${testdata.credit_card_owner}


    main_page.Click user icon
    account_page.Click preparing to see order should be created
    account_page.Check order status that should be Preparing
    Sleep    1s

    


