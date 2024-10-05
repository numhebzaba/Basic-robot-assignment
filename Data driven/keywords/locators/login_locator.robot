*** Variables ***
${login_locator.user_icon}    xpath=//ul[@role='menu']//span[@aria-label='user']
${login_locator.username_input}    xpath=//label[text()="Username"]/parent::div/following-sibling::div//input
${login_locator.password_input}    xpath=//label[text()="Password"]/parent::div/following-sibling::div//input
${login_locator.login_btn}    xpath=//span[text()='Login']
${login_locator.pop_up_btn}    xpath=//span[text()='OK']
${login_locator.verify_message}    xpath=//div[@class="ant-modal-confirm-content"]
