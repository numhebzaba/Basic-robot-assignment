*** Settings ***
Library    SeleniumLibrary

Variables    ../resources/testdata/testdata.yaml
Variables    ../resources/setting/${env}/setting.yaml

Resource    common.robot

Resource    ../keywords/pages/main_page.robot
Resource    ../keywords/locators/main_locator.robot

Resource    ../keywords/pages/login_page.robot
Resource    ../keywords/locators/login_locator.robot

Resource    ../keywords/pages/register_page.robot
Resource    ../keywords/locators/register_locator.robot

Resource    ../keywords/pages/product_page.robot
Resource    ../keywords/locators/product_locator.robot

Resource    ../keywords/pages/delivery_info_page.robot
Resource    ../keywords/locators/delivery_info_locator.robot

Resource    ../keywords/pages/payment_page.robot
Resource    ../keywords/locators/payment_locator.robot

Resource    ../keywords/pages/account_page.robot
Resource    ../keywords/locators/account_locator.robot

Resource    ../keywords/features/login_feature.robot

Resource    ../keywords/features/delivery_info_feature.robot

Resource    ../keywords/features/payment_feature.robot





