class RspecGreeter
 def greet
  "Hello Rspec!"
 end
end

describe 'Rspec greeter' do 
 it 'should say hello rspec when it receives the greet() message' do
  greeter = RspecGreeter.new
  greeting = greeter.greet
  expect(greeting).to eq("Hello Rspec!")
 end
end