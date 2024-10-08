*** Settings ***
Resource    ${CURDIR}/import.robot
*** Keywords ***
Open training platform doppio website
    SeleniumLibrary.Open browser    ${url}    gc    