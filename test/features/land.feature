Feature: Land

        Background: Login Success
            Given I open the url
             When user is on "login" page
              And I success login on the website application
                  | username               | password               |
                  | automation17@gmail.com | automation17@gmail.com |
             Then I expect that a text "Berhasil" on this page
             Then I expect that a text "Daftar Project" on this page

        @land-01
        Scenario: Add land success
            Given user is on "home" page
             When I click on the button "cardInformation"
              And user is on "land" page
              And I click on the button "tabLand"
              And I click on the text "Tambah Tanah"
              And I click on the button "chooseNameOwner"
              And I click on the text "<nameOwner>"
              And I set "<objectTax>" to the inputfield "inputObjectTax"
              And I set "<price>" to the inputfield "inputPrice"
              And I click on the button "btnChooseVersion"
              And I click on the text "<version>"
              And I set "<plotNumber>" to the inputfield "inputPlotNumber"
              And I click on the button "btnChooseTahap"
              And I click on the text "<tahap>"
              And I set "<luasTanah>" to the inputfield "inputLuasTanah"
              And I click on the button "btnAdd"
             Then I expect that a text "Berhasil" on this page
             Then I expect that a text "<tahap>" on this page
             Then I expect that a text "<luasTanah>" on this page
        Examples:
                  | nameOwner  | objectTax          | Heaprice | version  | plotNumber | tahap   | luasTanah |
                  | Testing123 | 112233344455566667 | 10000000 | Versi 17 | 0982231    | Tahap 1 | 1200      |















