module Mazerunner
 class Game

   def initialize(output)       
    @output = output
   end   

   def start
    @output.puts 'Klingons have captured your ship killing all crew members but you.' 
    @output.puts "Your one chance of escape is to reach the Armory, grab the neutron bomb, blow up the bridge and get on an escape pod back to Earth."   
    @output.puts "You are in the Central Corridor and there's a Klingon blocking your way and he's reaching for his blaster." 
    @output.puts 'What will you do now?'
   end
   
 end
end