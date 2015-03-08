Feature: Mazerunner starts game

As a mazerunner 
I want to start the game
So that I can win the game

Scenario: start game
Given I am not yet playing
When I start a new game
Then I should see "Klingons have captured your ship killing all crew members but you."
And I should see "What will you do now?"
