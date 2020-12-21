module AdderBot
  class Bot < SlackRubyBot::Bot
    help do
      title 'Adder Bot'
      desc 'This bot adds two numbers.'
  
      command 'Adds' do
        desc 'Please enter a format like 2+2 to get the summation of two numbers'
      end
    end
  end
end