*** Variables ***
${my_cart_locator.total_items}    xpath=//XCUIElementTypeStaticText[contains(@name,'${my_cart_translation.name_total}')]//following-sibling::XCUIElementTypeStaticText[contains(@name,'${my_cart_translation.name_items}')]
