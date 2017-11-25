*** Setting ***
Library             SeleniumLibrary
Suite teardown      Close All Browsers

*** Test Cases ***
Check all required fields in registration form
    Open Browser        http://bit.ly/2BajZDe       chrome
    Click Element       id=btn_submit
    Wait Until Page Contains        The Email field is required.
    Wait Until Page Contains        The Password field is required.
    Wait Until Page Contains        The Re-type Password field is required
    Wait Until Page Contains        The Name field is required.

Register successfully when input valid data
    Open Browser                    http://bit.ly/2BajZDe       chrome
    Input Text      id=email        gus1234@hotmail.com
    Input Password  id=password     password
    Input Password  id=repassword   password
    Input Text      id=name         gus
    Click Element   id=btn_submit
    Wait Until Page Contains        gus1234@hotmail.com
