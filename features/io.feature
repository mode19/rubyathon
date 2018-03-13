Feature: IO Functions
Program should be able to store and read from a storage device.


    Scenario: User wants to load information from storage
        When Program load data file
        Then Conent of file is available in memory

    Scenario: User wants to save information to storage
        When Program saves a file
        Then the file exists on permament storage

    Scenario: User wants to remote information from storage
        When Program deleles a file
        Then the file no longer exists

    Scenario: Communicate over a network
        Given A connection is established to another computer
        When The program sends a request
        Then a response is received
        
