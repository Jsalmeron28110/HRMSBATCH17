Feature: add employee scenario

  Background:  When user enters admin username and password
    When user enters admin username and password
    And  user clicks on login button
    Then user is successfully logged in
    When user clicks on PIM option
    And user clicks on add employee option


  @addemp @test
  Scenario: adding one employee in the hrms system
    #Given user is navigated to HRMS application
    #When user enters admin username and password
    #And  user clicks login button
    #Then user is successfully logged in
    #When user clicks on PIM option
    #And user clicks on add employee option
    When user enters firstName middleName and lastName
    Then employee added successfully
    #Then user close the browser

  @cucumber
  Scenario: Adding one employee using feature file
   # When user enters admin username and password
    #And  user clicks login button
    #Then user is successfully logged in
    #When user clicks on PIM option
    #And user clicks on add employee option
    When user enters "miraj" and "fali" and "moralejo"
    And  user clicks on save button
    Then employee added successfully

    @ddt
    Scenario Outline: adding multiple employees for
      When user enters "<firstName>" and "<middleName>" and enters "<lastName>"
      And  user clicks on save button
      Then employee added successfully
      Examples:
        | firstName | middleName | lastName |
        |daffy      |ms          |duck      |
        |tam        |ms          |jio       |
        |jo         |ms          |tron      |

      @excel
      Scenario: Adding multiple employees from excel file
        When user adds multiple employees from excel using "Sheet1" and verify them

        @datatable
        Scenario: adding multiple employees from data table
          When user adds multiple employees from data table
            | firstName  | middleName | lastName |
            | Donalina   | ms         | Duckun   |
            | Tamoha     | ms         | Jimun    |
            | Josu       | ms         | trumpun  |
