*** Settings ***
Resource    ${CURDIR}/import.robot
#ไม่จำเป็น
*** Keywords ***
Open my demo application
    IF    "${platform}"=="android"
        &{capability}=    BuiltIn.Create Dictionary
                        ...    deviceName=${deviceName}
                        ...    platformVersion=${platformVersion}
                        ...    platformName=${platformName}
                        ...    appPackage=${appPackage}
                        ...    appActivity=${appActivity}   
                
    ELSE IF    "${platform}"=="ios"
        &{capability}=    BuiltIn.Create Dictionary
                        ...    automationName=${automationName}
                        ...    platformName=${platformName}
                        ...    platformVersion=${platformVersion}
                        ...    bundleId=${bundleId}
                        ...    deviceName=${deviceName}
    END
    AppiumLibrary.Open application    ${remote_url}    &{capability}
