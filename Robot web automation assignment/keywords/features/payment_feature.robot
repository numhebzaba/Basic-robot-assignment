*** Settings ***
Resource    ${CURDIR}/../import.robot
*** Keywords ***
Input user's credit card info on payment page
    [Arguments]    &{user_info}

    payment_page.Click next button then page should show Payment Details
    payment_page.Input credit card number on payment page    ${user_info["credit_card_number"]}    
    payment_page.Input expiration date on payment page    ${user_info["credit_card_exp"]}
    payment_page.Input cv code on payment page    ${user_info["credit_card_cv"]}
    payment_page.Input card owner on payment page    ${user_info["credit_card_owner"]}
    payment_page.Click confirm payment button
    payment_page.Click OK pop up after payment successfully
    payment_page.Click continue shopping then should return to main page

    
    


