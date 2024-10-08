*** Settings ***
Resource    ${CURDIR}/import.robot
#ไม่จำเป็น
*** Keywords ***
Open my demo application
    IF    "${platform}"=="android"
        AppiumLibrary.Open application    remote_url=${remote_url}   
        ...    deviceName=${deviceName}  
        ...    platformVersion=${platformVersion}
        ...    platformName=${platformName} 
        ...    appPackage=${appPackage} 
        ...    appActivity=${appActivity}
    ELSE IF    "${platform}"=="ios"
        AppiumLibrary.Open application    remote_url=${remote_url}
        ...    automationName=${automationName}
        ...    platformName=${platformName}
        ...    platformVersion=${platformVersion}
        ...    bundleId=${bundleId}
        ...    deviceName=${deviceName}
    END
