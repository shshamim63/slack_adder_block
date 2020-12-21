module AdderBot
  module Commands
    class Operation < SlackRubyBot::Commands::Base
      scan(/hello/) do |client, data, stocks|
        client.say(text: "I am working", channel: data.channel)
      end
    end
  end
end