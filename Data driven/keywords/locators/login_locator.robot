*** Variables ***
${login_locator.username_input}    xpath=//label[text()="${login_translation.txt_username}"]/parent::div/following-sibling::div//input
${login_locator.password_input}    xpath=//label[text()="${login_translation.txt_password}"]/parent::div/following-sibling::div//input
${login_locator.login_btn}    xpath=//span[text()='${login_translation.txt_login_btn}']
${login_locator.pop_up_btn}    xpath=//span[text()='${login_translation.txt_ok_pop_up}']
  


${login_locator.verify_message}    xpath=//div[@class="ant-modal-confirm-content"]
