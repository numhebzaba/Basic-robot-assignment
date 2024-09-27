*** Keywords ***
Print User Info
    [Arguments]    &{user_info}
    Log    Name: ${user_info["name"]}
    Log    Age: ${user_info["age"]}
    Log    City: ${user_info["city"]}

*** Test Cases ***
TC-001 Print User Info From Input Dictionary
    Print User Info    name=Num    age=23    city=Samut sakhon
    

