*** Settings ***
Resource    ../import.robot
*** Keywords ***
Input user info on delivery info page
    [Arguments]    &{user_info}
    
    delivery_info_page.Input name on delivery info page    ${user_info["name"]}
    delivery_info_page.Input surname on delivery info page    ${user_info["surname"]}
    delivery_info_page.Input shipping address on delivery info page    ${user_info["shipping_address"]}
    delivery_info_page.Input phone number on delivery info page    ${user_info["phone_number"]}    
    delivery_info_page.Click pay button

    
    


