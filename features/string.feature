Feature: String Functions
Program should be able to manipulate strings


    Scenario: User wants to search a string for a substring
        Given a string contains the substring X
        When search is excuted
        Then search returns true

    Scenario: User wants to parse a string based on commmas
        Given a string containing commas
        When the user splits it
        Then an array is created with an entry for each substring between the commas

    Scenario: User wants to break a string into tokens
        Given A string of tokens
        When it is parsed
        Then an array of tokens is returned

        
