*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    file=${CURDIR}/../resources/data_driven/data.csv   dialect=excel

Variables    ${CURDIR}/../resources/translation/${lang}.yaml
Variables    ${CURDIR}/../resources/setting/setting.yaml  


Resource    ${CURDIR}/common.robot

Resource    ${CURDIR}/../keywords/locators/main_locator.robot
Resource    ${CURDIR}/../keywords/pages/main_page.robot

Resource    ${CURDIR}/../keywords/locators/login_locator.robot
Resource    ${CURDIR}/../keywords/pages/login_page.robot
