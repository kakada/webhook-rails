module WebhookRails
  module Webhooks
    class TokenAuth < ::WebhookRails::Webhook
      def notify(params = {})
        RestClient::Request.execute method: :post, payload: params, url: url, timeout: 30, headers: { Authorization: "Token token=#{token}" }
      end
    end
  end
end
