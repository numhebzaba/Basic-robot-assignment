*** Settings ***
Resource    ${CURDIR}/import.robot
#ไม่จำเป็น
*** Keywords ***
Open My demo Application
    IF    "${platform}"=="android"
        Open Application    remote_url=${remote_url}   
        ...    deviceName=${deviceName}  
        ...    platformVersion=${platformVersion}
        ...    platformName=${platformName} 
        ...    appPackage=${appPackage} 
        ...    appActivity=${appActivity}
    ELSE IF    "${platform}"=="ios"
        Open Application    remote_url=${remote_url}
        ...    automationName=${automationName}
        ...    platformName=${platformName}
        ...    platformVersion=${platformVersion}
        ...    bundleId=${bundleId}
        ...    deviceName=${deviceName}
    END
