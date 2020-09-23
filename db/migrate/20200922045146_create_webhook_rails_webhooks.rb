class CreateWebhookRailsWebhooks < ActiveRecord::Migration[6.0]
  def change
    create_table :webhook_rails_webhooks do |t|
      t.string :name
      t.string :token
      t.string :username
      t.string :password
      t.string :url
      t.string :type

      t.timestamps
    end
  end
end
