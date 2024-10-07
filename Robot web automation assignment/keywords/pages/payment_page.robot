*** Settings ***
Resource    ${CURDIR}/../import.robot
*** Keywords ***
Click next button then page should show Payment Details
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_locator.next_btn}
    SeleniumLibrary.Click Element    ${payment_locator.next_btn}
Input credit card number on payment page
    [Arguments]    ${credit_card_number}
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_locator.credit_card_number}
    SeleniumLibrary.Input Text    ${payment_locator.credit_card_number}    ${credit_card_number}
Input expiration date on payment page
    [Arguments]    ${credit_card_exp}
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_locator.credit_card_exp}
    SeleniumLibrary.Input Text    ${payment_locator.credit_card_exp}    ${credit_card_exp}
Input cv code on payment page
    [Arguments]    ${credit_card_cv}
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_locator.credit_card_cv}
    SeleniumLibrary.Input Text    ${payment_locator.credit_card_cv}    ${credit_card_cv}
Input card owner on payment page
    [Arguments]    ${credit_card_owner}
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_locator.credit_card_owner}
    SeleniumLibrary.Input Text    ${payment_locator.credit_card_owner}    ${credit_card_owner}
Click confirm payment button
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_locator.confirm_payment_btn}
    SeleniumLibrary.Click Element    ${payment_locator.confirm_payment_btn}
Click OK pop up after payment successfully
    SeleniumLibrary.Wait Until Element Is Visible    ${login_locator.OK_pop_up}
    SeleniumLibrary.Click Element    ${login_locator.OK_pop_up}   
    SeleniumLibrary.Wait Until Element Is Not Visible    ${login_locator.OK_pop_up}
Click continue shopping then should return to main page
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_locator.continue_shopping}
    SeleniumLibrary.Click Element    ${payment_locator.continue_shopping}
