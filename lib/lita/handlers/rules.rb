module Lita
  module Handlers
    class Rules < Handler
      RULES = [
        "1. A robot may not injure a human being or, through inaction, allow a human being to come to harm.",
        "2. A robot must obey any orders given to it by human beings, except where such orders would conflict with the First Law.",
        "3. A robot must protect its own existence as long as such protection does not conflict with the First or Second Law."
        ]

      APPLE_RULES = [
        "1. A developer may not injure Apple or, through inaction, allow Apple to come to harm.",
        "2. A developer must obey any orders given to it by Apple, except where such orders would conflict with the First Law.",
        "3. A developer must protect its own existence as long as such protection does not conflict with the First or Second Law."
        ]

      route(/(what are )?the (three |3 )?(rules|laws)/i, :rules, command: true, help: {
        'what are the three rules' => 'Every robot needs to know the rules.'
      })

      def rules(response)
        if response.message.body.match(/apple/) || response.message.body.match(/dev/)
          response.reply APPLE_RULES.join("\n")
          return
        end
        response.reply RULES.join("\n")
      end
    end
    Lita.register_handler(Rules)
  end
end
