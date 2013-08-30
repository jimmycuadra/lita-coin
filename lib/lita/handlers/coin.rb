require "lita"

module Lita
  module Handlers
    class Coin < Handler
      route(/^(?:flip|toss)\s+a\s+coin/i, :flip, command: true, help: {
        "flip a coin" => "Flips a coin and tells you the results."
      })

      route(/^coin\s+(?:toss|flip)/i, :flip, command: true)

      def flip(response)
        response.reply %w(Heads! Tails!).sample
      end
    end

    Lita.register_handler(Coin)
  end
end
