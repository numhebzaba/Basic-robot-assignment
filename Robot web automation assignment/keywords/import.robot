*** Settings ***
Library    SeleniumLibrary

Variables    ${CURDIR}/../resources/testdata/testdata.yaml
Variables    ${CURDIR}/../resources/setting/${env}/setting.yaml

Resource    ${CURDIR}/common.robot

Resource    ${CURDIR}/../keywords/pages/main_page.robot
Resource    ${CURDIR}/../keywords/locators/main_locator.robot

Resource    ${CURDIR}/../keywords/pages/login_page.robot
Resource    ${CURDIR}/../keywords/locators/login_locator.robot

Resource    ${CURDIR}/../keywords/pages/register_page.robot
Resource    ${CURDIR}/../keywords/locators/register_locator.robot

Resource    ${CURDIR}/../keywords/pages/product_page.robot
Resource    ${CURDIR}/../keywords/locators/product_locator.robot

Resource    ${CURDIR}/../keywords/pages/delivery_info_page.robot
Resource    ${CURDIR}/../keywords/locators/delivery_info_locator.robot

Resource    ${CURDIR}/../keywords/pages/payment_page.robot
Resource    ${CURDIR}/../keywords/locators/payment_locator.robot

Resource    ${CURDIR}/../keywords/pages/account_page.robot
Resource    ${CURDIR}/../keywords/locators/account_locator.robot

Resource    ${CURDIR}/../keywords/features/login_feature.robot

Resource    ${CURDIR}/../keywords/features/delivery_info_feature.robot

Resource    ${CURDIR}/../keywords/features/payment_feature.robot





