Feature: Mazerunner submits first action


As a mazerunner 
I want to submit a guess 
So that I can try to win the game

Scenario: Correct guess 
Given the correct action is "Tell a joke"
When I guess "Tell a joke"
Then I should see "You did it. You won this round."

Scenario: Wrong guess - shoot
Given the correct action is "Tell a joke"
When I guess "Shoot"
Then I should see "You are dead!!!"

Scenario: Wrong guess - Dodge
Given the correct action is "Tell a joke" 
When I guess "Dodge"
Then I should see "You are dead!!!"

Scenario: Wrong guess - Run Away
Given the correct action is "Tell a joke" 
When I guess "Run Away"
Then I should see "You are dead!!!"

Scenario: Confusing guess
Given the correct action is "Tell a joke"
When I do not guess "Shoot" 
And I do not guess "Dodge"
And I do not guess "Run Away"
And I do not guess "Tell a joke"
Then I should see "Does not compute!!!+++!!!"

Scenario Outline: submit guess
Given the correct action is "<action>"
When I guess "<guess>"
Then I should see "<response>"

Scenarios: correct guess
| action | guess | response |
| Tell a joke | Tell a joke | You did it. You won this round. |

Scenarios: wrong guess
| action | guess | response |
| Tell a joke | Shoot | You are dead!!! |
| Tell a joke | Dodge | You are dead!!! |
| Tell a joke | Run Away | You are dead!!! |


Scenarios: Confusing guess
| action | guess | response |
| Tell a joke | Tella joke | Does not compute!!!+++!!! |
| Tell a joke | shoot! | Does not compute!!!+++!!! |
| Tell a joke | dodge! | Does not compute!!!+++!!! |
| Tell a joke | Run away! | Does not compute!!!+++!!! |
