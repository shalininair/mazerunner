module Mazerunner
 class Game

   def initialize(output)       
    @output = output
   end   

   def start(action = nil)
    @output.puts 'Klingons have captured your ship killing all crew members but you.' 
    @output.puts "Your one chance of escape is to reach the Armory, grab the neutron bomb, blow up the bridge and get on an escape pod back to Earth."   
    @output.puts "You are in the Central Corridor and there's a Klingon blocking your way and he's reaching for his blaster." 
    @output.puts 'What will you do now?'
   end

   def guess(guess)
    
    case guess
    when 'Tell a joke'
     @output.puts "You did it. You won this round."
    when 'Shoot' 
     @output.puts "You are dead!!!" 
    when 'Dodge'
     @output.puts "You are dead!!!" 
    when 'Run Away'
     @output.puts "You are dead!!!"  
    else
     @output.puts "Does not compute!!!+++!!!"
    end    
   end
   
 end
end