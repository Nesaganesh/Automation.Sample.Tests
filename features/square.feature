Feature: As a user, I want to check that four points in the space are a square

Background: Check coordinates are a Square 
    Given navigate to the form
    
    Scenario Outline: Error message displayed on if mandatory coordinates passed correctly 
        When enter the coordinates <coordinate1> and <coordinate2> and <coordinate3> and <coordinate4>
        And submit the form
        Then 'all coordinates are mandatory' error message displayed 
    
    Examples:
    | coordinate1   | coordinate2 | coordinate3 | coordinate4   |
    |               | 10,21       | 5,8         | 10,51         |

    Scenario Outline: Coordinates are square then display the mockup form again
        When enter the coordinates <coordinate1> and <coordinate2> and <coordinate3> and <coordinate4>
        And submit the form
        Then check if mockup form is displayed again

    Examples:
    | coordinate1   | coordinate2 | coordinate3 | coordinate4   |
    | 5,10          | 10,10       | 5,5         | 10,5          |

    Scenario Outline: Error message displayed with invalid coordinates
        When enter the coordinates <coordinate1> and <coordinate2> and <coordinate3> and <coordinate4>
        And submit the form
        Then 'Its not a square' error message displayed 
    
    Examples:
    | coordinate1   | coordinate2 | coordinate3 | coordinate4   |
    | 5,11          | 10,21       | 5,8         | 10,51         |


