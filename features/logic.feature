Feature: Control Structures
Statements that can change the flow of the program based on decision points


    Scenario: If/then/else
        Given I have a decision to make
        When I decide yes
        Then I should execute if or else block but not both

    Scenario: For Looping
        Given I have something to execute repeatedly
        Then When I loop
        Then The statement is executed until the number of iterations is reached

    Scenario: Expression Looping
        Given I have something to execute repeatedly
        Then When I loop
        Then The statement is executed until the end-condition is reached
        
