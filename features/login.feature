Feature: The Internet Guinea Pig Website

  Scenario: As a user, I can open a modal with a text area.
    When Ryan is on the modal page
    And Kons is on the modal page
    And Ryan opens the modal
    And Kons opens the modal
    Then Ryan clicks to close the modal
    And Kons clicks to close the modal

    # This bug is intermittent, so we'll do this a few times.
    When Ryan is on the modal page
    And Kons is on the modal page
    And Ryan opens the modal
    And Kons opens the modal
    Then Ryan clicks to close the modal
    And Kons clicks to close the modal

    When Ryan is on the modal page
    And Kons is on the modal page
    And Ryan opens the modal
    And Kons opens the modal
    Then Ryan clicks to close the modal
    And Kons clicks to close the modal

    When Ryan is on the modal page
    And Kons is on the modal page
    And Ryan opens the modal
    And Kons opens the modal
    Then Ryan clicks to close the modal
    And Kons clicks to close the modal
