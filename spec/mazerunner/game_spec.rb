require 'spec_helper'

module Mazerunner
 describe Game do
  describe '#start' do
    
     let (:output) { double('output').as_null_object }
     let (:game)   { Game.new(output)}
    

    it 'sends a initial message' do
     output.should_receive(:puts).with('Klingons have captured your ship killing all crew members but you.') 
     game.start
    end

    it 'prompts for first guess' do
     output.should_receive(:puts).with('What will you do now?')
     game.start
    end
  end
 end
end