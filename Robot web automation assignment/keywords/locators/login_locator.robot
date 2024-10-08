*** Variables ***
${login_locator.sign_up_btn}    xpath=//span[text()='${login_translation.txt_sign_up_btn}']
${login_locator.username}   xpath=//label[text()="${login_translation.txt_username}"]/parent::div/following-sibling::div//input
${login_locator.password}   xpath=//label[text()="${login_translation.txt_password}"]/parent::div/following-sibling::div//input
${login_locator.login_btn}    xpath=//span[text()='${login_translation.txt_login_btn}']
${login_locator.ok_pop_up}    xpath=//span[text()='${login_translation.txt_ok_pop_up}']

