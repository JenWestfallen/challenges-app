# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
module ApplicationCable
  class ChatChannel < ActionCable::Channel::Base
    def subscribed
      current_user.appear
    end

    def unsubscribed
      current_user.disappear
    end
  end

  class CounterChannel < ActionCable::Channel::Base
    def subscribed
    end
  end

  class QuotesChannel < ActionCable::Channel::Base
    def subscribed
    end
  end
end
