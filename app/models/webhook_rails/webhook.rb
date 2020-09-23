module WebhookRails
  class Webhook < ApplicationRecord
    validates :name, :type, presence: true
    validates :token, presence: true, if: -> { type == Webhooks::TokenAuth.name }
    validates :username, :password, presence: true, if: -> { type == Webhooks::BasicAuth.name }
    validates :url, presence: true, format: { with: %r{\A^(https?\://)?[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,6}((/|\?)\S*)?$\z} }

    def self.types
      [['Basic Auth', Webhooks::BasicAuth.name], ['Token Auth', Webhooks::TokenAuth.name]]
    end

    def notify(_params = {})
      raise 'you have to implement in subclass'
    end
  end
end
