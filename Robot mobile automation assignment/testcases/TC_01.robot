*** Settings ***
Resource    ../keywords/import.robot

*** Test Cases ***
Open Test Application
    Open Application    remote_url=${remote_url}   
    ...     deviceName=${deviceName}  
    ...     platformVersion=${platformVersion}   
    ...     platformName=${platformName} 
    ...     appPackage=${appPackage} 
    ...     appActivity=${appActivity} 