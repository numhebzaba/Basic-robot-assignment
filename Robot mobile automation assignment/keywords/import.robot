*** Settings ***
Library    AppiumLibrary
# Variables    ../resources/setting/${platform}.yaml

# Resource    ../keywords/locators/${platform}/common.robot

Variables   ${CURDIR}/../resources/setting/${env}/${platform}.yaml
Variables   ${CURDIR}/../resources/testdata.yaml

Resource    ${CURDIR}/../keywords/locators/${platform}/common_locator.robot
Resource    ${CURDIR}/../keywords/pages/common_page.robot

Resource    ${CURDIR}/../keywords/locators/${platform}/main_shopping_locator.robot
Resource    ${CURDIR}/../keywords/pages/main_shopping_page.robot

Resource    ${CURDIR}/../keywords/locators/${platform}/product_1_locator.robot
Resource    ${CURDIR}/../keywords/pages/product_1_page.robot

Resource    ${CURDIR}/../keywords/locators/${platform}/my_cart_locator.robot
Resource    ${CURDIR}/../keywords/pages/my_cart_page.robot
