module WebhookRails
  module Webhooks
    class BasicAuth < ::WebhookRails::Webhook
      def notify(params = {})
        RestClient::Request.execute method: :post, payload: params, url: url, timeout: 30, user: username, password: password
      end
    end
  end
end
