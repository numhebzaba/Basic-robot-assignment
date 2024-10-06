*** Settings ***
Resource    ${CURDIR}/../import.robot
*** Keywords ***
Click next button then page should show Payment Details
    Wait Until Element Is Visible    ${payment_locator.next_btn}
    Click Element    ${payment_locator.next_btn}
Input credit card number on payment page
    [Arguments]    ${credit_card_number}
    Wait Until Element Is Visible    ${payment_locator.credit_card_number}
    Input Text    ${payment_locator.credit_card_number}    ${credit_card_number}
Input expiration date on payment page
    [Arguments]    ${credit_card_exp}
    Wait Until Element Is Visible    ${payment_locator.credit_card_exp}
    Input Text    ${payment_locator.credit_card_exp}    ${credit_card_exp}
Input cv code on payment page
    [Arguments]    ${credit_card_cv}
    Wait Until Element Is Visible    ${payment_locator.credit_card_cv}
    Input Text    ${payment_locator.credit_card_cv}    ${credit_card_cv}
Input card owner on payment page
    [Arguments]    ${credit_card_owner}
    Wait Until Element Is Visible    ${payment_locator.credit_card_owner}
    Input Text    ${payment_locator.credit_card_owner}    ${credit_card_owner}
Click confirm payment button
    Wait Until Element Is Visible    ${payment_locator.confirm_payment_btn}
    Click Element    ${payment_locator.confirm_payment_btn}
Click OK pop up after payment successfully
    Wait Until Element Is Visible    ${login_locator.OK_pop_up}
    Click Element    ${login_locator.OK_pop_up}   
    Wait Until Element Is Not Visible    ${login_locator.OK_pop_up}
Click continue shopping then should return to main page
    Wait Until Element Is Visible    ${payment_locator.continue_shopping}
    Click Element    ${payment_locator.continue_shopping}
