*** Settings ***
Resource    ${CURDIR}/../import.robot
*** Keywords ***
Click next button then page should show payment details
    SeleniumLibrary.Wait until element is visible    ${payment_locator.next_btn}
    SeleniumLibrary.Click element    ${payment_locator.next_btn}
Input credit card number on payment page
    [Arguments]    ${credit_card_number}
    SeleniumLibrary.Wait until element is visible    ${payment_locator.credit_card_number}
    SeleniumLibrary.Input text    ${payment_locator.credit_card_number}    ${credit_card_number}
Input expiration date on payment page
    [Arguments]    ${credit_card_exp}
    SeleniumLibrary.Wait until element is visible    ${payment_locator.credit_card_exp}
    SeleniumLibrary.Input text    ${payment_locator.credit_card_exp}    ${credit_card_exp}
Input cv code on payment page
    [Arguments]    ${credit_card_cv}
    SeleniumLibrary.Wait until element is visible    ${payment_locator.credit_card_cv}
    SeleniumLibrary.Input text    ${payment_locator.credit_card_cv}    ${credit_card_cv}
Input card owner on payment page
    [Arguments]    ${credit_card_owner}
    SeleniumLibrary.Wait until element is visible    ${payment_locator.credit_card_owner}
    SeleniumLibrary.Input text    ${payment_locator.credit_card_owner}    ${credit_card_owner}
Click confirm payment button
    SeleniumLibrary.Wait until element is visible    ${payment_locator.confirm_payment_btn}
    SeleniumLibrary.Click element    ${payment_locator.confirm_payment_btn}
Click ok pop up after payment successfully
    SeleniumLibrary.Wait until element is visible    ${login_locator.ok_pop_up}
    SeleniumLibrary.Click element    ${login_locator.ok_pop_up}   
    SeleniumLibrary.Wait until element is not visible    ${login_locator.ok_pop_up}
Click continue shopping then should return to main page
    SeleniumLibrary.Wait until element is visible    ${payment_locator.continue_shopping}
    SeleniumLibrary.Click element    ${payment_locator.continue_shopping}
