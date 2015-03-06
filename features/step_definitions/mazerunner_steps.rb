class Output 
 def messages
   @messages ||= []
 end

 def puts(message)
  messages << message
 end
end

 def terminal_output
  @output ||= Output.new
 end
 

Given(/^I am not yet playing$/) do
end

Given(/^the correct action is "(.*?)"$/) do |action|
  @game = Mazerunner::Game.new(terminal_output)
  @game.start(action)
end

When(/^I start a new game$/) do
  game = Mazerunner::Game.new(terminal_output)
  game.start('')
end

When(/^I guess "(.*?)"$/) do |guess|
 @game.guess(guess)
end

When(/^I do not guess "(.*?)"$/) do |confusing_guess|
 @game.guess('Tella joke') 
end

Then(/^I should see "(.*?)"$/) do |message|
  expect(terminal_output.messages).to include(message)
end

