Feature: Peta Rincik Desa

    Background: Login Success
        Given I open the url
        When user is on "login" page
        And I success login on the website application
            | username               | password               |
            | automation17@gmail.com | automation17@gmail.com |
        Then I expect that a text "Berhasil" on this page
        Then I expect that a text "Daftar Project" on this page

    @maps-01
    Scenario: Add peta rincik desa with type file jpg
        Given user is on "home" page
        When I click on the button "cardInformation"
        And user is on "overview" page
        And I scroll to element "titleMaps"
        When I get list element "listMaps"
        And I scroll to element "titleOverview"
        And I click on the text "Tambah Peta"
        And I upload file "peta.jpg" on the field "inputField"
        And I click on the button "btnSave"
        Then I expect that a text "Berhasil" on this page
        Then I expect list of maps has been successfully increased

    @maps-02
    Scenario: Add peta rincik desa with file type doc
        Given user is on "home" page
        When I click on the button "cardInformation"
        And user is on "overview" page
        And I click on the text "Tambah Peta"
        And I upload file "test-doc.docx" on the field "inputField"
        Then I expect that a text "Gagal" on this page

    @maps-03
    Scenario: Delete peta rincik desa
        Given user is on "home" page
        When I click on the button "cardInformation"
        And user is on "overview" page
        And I scroll to element "titleMaps"
        When I get list element "listMaps"
        And I scroll to element "titleOverview"
        And I click on the button "btnDeleteMaps"
        And I click on the button "confirmDelete"
        Then I expect that a text "Berhasil" on this page
        Then I expect list of maps has been successfully confirm delete

    @maps-04
    Scenario: Cancel delete peta rincik desa
        Given user is on "home" page
        When I click on the button "cardInformation"
        And user is on "overview" page
        And I scroll to element "titleMaps"
        When I get list element "listMaps"
        And I scroll to element "titleOverview"
        And I click on the button "btnDeleteMaps"
        And I click on the button "cancelDelete"
        Then I expect that a text "Berhasil" on this page
        Then I expect list of maps has been successfully cancel delete













