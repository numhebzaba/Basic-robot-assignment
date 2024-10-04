*** Settings ***
Resource    ${CURDIR}/../import.robot
*** Keywords ***
Open My demo Application
    IF    '${platform}' == 'android'
        Open Application    remote_url=${remote_url}   
        ...     deviceName=${deviceName}  
        ...     platformVersion=${platformVersion}   
        ...     platformName=${platformName} 
        ...     appPackage=${appPackage} 
        ...     appActivity=${appActivity} 
    ELSE IF    '${platform}' == 'ios'
        Open Application       remote_url=${remote_url}
        ...                    automationName=${automationName}
        ...                    platformName=${platformName}
        ...                    platformVersion=${platformVersion}
        ...                    bundleId=${bundleId}
        ...                    deviceName=${deviceName}
    END
Click cart icon
    Wait Until Element Is Visible    ${common_locator.cart_icon} 
    Click Element    ${common_locator.cart_icon} 