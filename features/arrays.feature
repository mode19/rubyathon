Feature: Array Operations
Arrays are a storage mechanism that can store a sequence of items in order.

    Scenario: Initialize and iterate array of numbers
        Given that I store a list of numbers in an array
        When I iterate an array
        Then I should see the same list repeated back

    Scenario: Reading and Assigning array contents
        Given that I have an array of elements
        When I assign a new value into an existing element
        Then the array is modified to contain the new value

    Scenario: Sorting an array
        Given that I have a list of strings
        When I sort the array
        Then the contents of the array is now in alpha-numeric order

    Scenario: Resize an array
        Given that I have an array of 10 items
        When I remove one element from the middle
        Then I have an array of 9 items
