*** Settings ***
Library    AppiumLibrary

Variables   ${CURDIR}/../resources/setting/${env}/${platform}.yaml
Variables   ${CURDIR}/../resources/testdata/testdata.yaml

Resource    ${CURDIR}/common.robot

Resource    ${CURDIR}/../keywords/locators/${platform}/main_shopping_locator.robot
Resource    ${CURDIR}/../keywords/pages/main_shopping_page.robot

Resource    ${CURDIR}/../keywords/locators/${platform}/product_locator.robot
Resource    ${CURDIR}/../keywords/pages/product_page.robot

Resource    ${CURDIR}/../keywords/locators/${platform}/my_cart_locator.robot
Resource    ${CURDIR}/../keywords/pages/my_cart_page.robot

Resource    ${CURDIR}/../keywords/locators/${platform}/cart_bar_locator.robot
Resource    ${CURDIR}/../keywords/pages/cart_bar_page.robot