Feature: Stakeholder

        Background: Login Success
            Given I open the url
             When user is on "login" page
              And I success login on the website application
                  | username               | password               |
                  | automation17@gmail.com | automation17@gmail.com |
             Then I expect that a text "Berhasil" on this page
             Then I expect that a text "Daftar Project" on this page

        @stake-01
        Scenario: Add stackholder success
            Given user is on "home" page
             When I click on the button "cardInformation"
              And user is on "stakeholder" page
              And I click on the button "tabStackHolder"
              And I click on the button "addStakeHolder"
              And I set "<nameStake>" to the inputfield "inputName"
              And I set "<numberPhone>" to the inputfield "inputPhone"
              And I set "<address>" to the inputfield "inputAddress"
              And I upload file "peta.jpg" on the field "uploadPhoto"
              And I upload file "peta.jpg" on the field "uploadFile"
             When I click on the button "btnChooseIdentity"
              And I click on the text "<typeIdentity>"
              And I click on the button "btnAdd"
             Then I expect that a text "Berhasil" on this page
             Then I expect that a text "<nameStake>" on this page
             Then I expect that a text "<numberPhone>" on this page
        Examples:
                  | nameStake  | numberPhone | address           | typeIdentity |
                  | Testing123 | 08124123123 | Tangerang Selatan | KTP          |





