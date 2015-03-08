require 'spec_helper'

module Mazerunner
 describe Game do

     let (:output) { double('output').as_null_object }
     let (:game)   { Game.new(output)}

  describe '#start' do    
    it 'sends a initial message' do
     output.should_receive(:puts).with('Klingons have captured your ship killing all crew members but you.') 
     game.start('Tell a joke')
    end

    it 'prompts for first guess' do
     output.should_receive(:puts).with('What will you do now?')
     game.start('Tell a joke')
    end
   end 


  describe '#guess' do

   context 'with confusing guess' do
    it 'sends a response with Does not compute' do
      game.start('Tell a joke')
      output.should_receive(:puts).with("Does not compute!!!+++!!!")
      game.guess('Tella joke') 
    end    

    it 'sends a response with Does not compute' do
      game.start('Tell a joke')
      output.should_receive(:puts).with("Does not compute!!!+++!!!")
      game.guess('shoot!') 
    end

    it 'sends a response with Does not compute' do
      game.start('Tell a joke')
      output.should_receive(:puts).with("Does not compute!!!+++!!!")
      game.guess('dodge!') 
    end

    it 'sends a response with Does not compute' do
      game.start('Tell a joke')
      output.should_receive(:puts).with("Does not compute!!!+++!!!")
      game.guess('Run away!') 
    end

   end   
  end 
  
  context 'with correct guess' do
    it 'sends a response with You did it. You won this round' do
        game.start('Tell a joke')
        output.should_receive(:puts).with('You did it. You won this round.')
        game.guess('Tell a joke')
    end    
  end

  context 'with wrong guess' do
    it 'sends a response You are dead' do
        game.start('Tell a joke')
        output.should_receive(:puts).with("You are dead!!!")
        game.guess('Shoot')
    end

    it 'sends a response You are dead' do
        game.start('Tell a joke')
        output.should_receive(:puts).with("You are dead!!!")
        game.guess('Dodge')
    end

    it 'sends a response You are dead' do
        game.start('Tell a joke')
        output.should_receive(:puts).with("You are dead!!!")
        game.guess('Run Away')
    end


  end

 end
end
