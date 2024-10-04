*** Settings ***
Resource    ${CURDIR}/import.robot
#ไม่จำเป็น
*** Keywords ***
Open training platform doppio website
    Open Browser    ${url}    gc