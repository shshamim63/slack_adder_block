require_relative '../string_operation'

module AdderBot
  module Commands
    class Operation < SlackRubyBot::Commands::Base
      scan(/[\s\S]+/) do |client, data, match|        
        if /-?\d+(?:\.\d+(?:E\d+)?)?\s*[+]\s*-?\d+(?:\.\d+(?:E\d+)?)?/.match(match[0])
          substring = Calculation.seperate_target_string(match[0])
          numbers = Calculation.separate_numbers(substring)
          result = Calculation.generate_result(numbers[0], numbers[1])
          client.say(text: "#{numbers[0]} + #{numbers[1]} = #{result}", channel: data.channel)
        else
          client.say(text: "Sorry, I didn't understand that. I only add numbers in this format. eg: 5+6 or 6+3", channel: data.channel)
        end
      end
    end
  end
end