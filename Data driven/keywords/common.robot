*** Settings ***
Resource    ${CURDIR}/import.robot
*** Keywords ***
Open training platform doppio website
    Open Browser    ${url}    gc    