Feature: Bill Information

    Background: Login Success
        Given I open the url
        When user is on "login" page
        And I success login on the website application
            | username               | password               |
            | automation17@gmail.com | automation17@gmail.com |
        Then I expect that a text "Berhasil" on this page
        Then I expect that a text "Daftar Project" on this page

    @bill-01
    Scenario: Add bill success
        Given user is on "home" page
        When I click on the button "cardInformation"
        And user is on "bill" page
        And I click on the button "tabBill"
        And I click on the text "Tambah Tagihan"
        And I click on the button "chooseLand"
        And I click on the text "<land>"
        And I set "<billInfo>" to the inputfield "inputBillInfo"
        And I set "<billNominal>" to the inputfield "inputBillNominal"
        And I click on the button "btnChooseDate"
        And I click on the button "selectDate"
        And I upload file "peta.jpg" on the field "uploadBerkas"
        And I click on the button "btnSave"
        Then I expect that a text "Berhasil" on this page
        Then I expect that a text "<land>" on this page
        Then I expect that a text "<owner>" on this page
        Then I expect that a text "<noPlot>" on this page
        Then I expect that a text "Rp100.000.000" on this page
        Examples:
            | land      | billInfo      | billNominal | owner      | noPlot  |
            | ALND00009 | QA Automation | 100000000   | Testing123 | 0982231 |











