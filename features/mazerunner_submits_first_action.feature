Feature: Mazerunner submits first action


As a mazerunner 
I want to submit a guess 
So that I can try to win the game

Scenario: Correct action 
Given the correct action is 'Tell a joke'
When I guess 'Tell a joke'
Then I should see 'You did it. You won this round.'

Scenario: Wrong action - shoot
Given the correct action is 'Tell a joke' 
When I guess 'Shoot'
Then I should see 'You are dead!!!'

Scenario: Wrong action
Given the correct action is 'Tell a joke' 
When I guess 'Dodge'
Then I should see 'You are dead!!!'

Scenario: Wrong action
Given the correct action is 'Tell a joke' 
When I guess 'Run Away'
Then I should see 'You are dead!!!'

Scenario: Confusing action
Given the correct action is 'Tell a joke'
When I do not guess 'Shoot' 
And I do not guess 'Dodge'
And I do not guess 'Run Away'
And I do not guess 'Tell a joke'
Then I should see 'Does not compute!!!+++!!!'

Scenario Outline: submit action
Given the correct action is "<action>"
When I guess "<guess>"
Then I should see "<response>"

Scenarios: correct action
| action | guess | response |
| Tell a joke | Tell a joke | You did it. You won this round. |

Scenarios: wrong action
| action | guess | response |
| Tell a joke | Shoot | You are dead!!! |
| Tell a joke | Dodge | You are dead!!! |
| Tell a joke | Run Away | You are dead!!! |


Scenario Outline: submit confusing action
Given the correct action is "<action>"
When I dont guess "<guess>"
Then I should see "<response>"

Scenarios: Confusing action
| action | guess | response |
| Tell a joke | Tell a joke | Does not compute!!!+++!!! |
| Tell a joke | Shoot | Does not compute!!!+++!!! |
| Tell a joke | Dodge | Does not compute!!!+++!!! |
| Tell a joke | Run Away | Does not compute!!!+++!!! |


