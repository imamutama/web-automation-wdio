Feature: Test

        Background:
            Given I open the url

        @login-01
        Scenario: User login success
              And user is on "login" page
             When I set "<username>" to the inputfield "username"
              And I set "<password>" to the inputfield "password"
              And I click on the button "btnLogin"
             Then I expect that a text "Daftar Project" on this page
        Examples:
                  | username               | password               |
                  | automation17@gmail.com | automation17@gmail.com |

        @login-02
        Scenario: User can see password with visbillity button
              And user is on "login" page
             When I set "<username>" to the inputfield "username"
              And I set "<password>" to the inputfield "password"
              And I click on the button "btnVisibility"
             Then I expect that element "password" matches the text "<password>"
        Examples:
                  | username               | password               |
                  | automation17@gmail.com | automation17@gmail.com |

        @login-03
        Scenario: User must be input field username
              And user is on "login" page
             When I set "<username>" to the inputfield "username"
              And I set "<password>" to the inputfield "password"
              And I clear the inputfield "username"
             Then I expect that a text "<message>" on this page
             Then I expect that element "btnVisibility" is disabled
        Examples:
                  | username               | password               | message                    |
                  | automation17@gmail.com | automation17@gmail.com | Username/Email harus diisi |

        @login-04
        Scenario: User must be input field password
              And user is on "login" page
             When I set "<username>" to the inputfield "username"
              And I set "<password>" to the inputfield "password"
              And I clear the inputfield "password"
             Then I expect that a text "<message>" on this page
             Then I expect that element "btnVisibility" is disabled
        Examples:
                  | username               | password               | message              |
                  | automation17@gmail.com | automation17@gmail.com | Password harus diisi |







