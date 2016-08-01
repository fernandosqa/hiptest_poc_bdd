Feature: POC BDD


  Scenario: Search Google (uid:ab630da6-063f-4c01-a793-cae2b2c97299)
    Given i open Google home page
    When i search for "Hiptest"
    Then i see "Hiptest" in page results
