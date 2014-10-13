Feature: Manifest News Page
  Scenario: Reading the Manifest News
    Given there is some news
    When I select the news
    Then the News is present for reading

  Scenario: Searching for jobs by State on the Opportunities Page
    Given there are some job postings
    When I search for jobs by state
    Then the jobs in that state will be listed