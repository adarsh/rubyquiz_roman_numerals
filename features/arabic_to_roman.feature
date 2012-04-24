Feature: Convert arabic numerals to roman
  In order to convert arabic numerals to roman numerals
  As a user
  I should be able to enter arabic numerals and get back roman

  Scenario Outline: Converting arabic numerals to roman
    Given the input of "<numeric>"
    When the program is run
    Then the output should be "<roman>"

    Examples:
      | numeric | roman  |
      | 5       | V      |
      | 99      | XCIX   |
      | 999     | CMXCIX |
      | 43      | XLIII  |
