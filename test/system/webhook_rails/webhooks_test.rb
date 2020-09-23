require "application_system_test_case"

module WebhookRails
  class WebhooksTest < ApplicationSystemTestCase
    setup do
      @webhook = webhook_rails_webhooks(:one)
    end

    test "visiting the index" do
      visit webhooks_url
      assert_selector "h1", text: "Webhooks"
    end

    test "creating a Webhook" do
      visit webhooks_url
      click_on "New Webhook"

      fill_in "Name", with: @webhook.name
      fill_in "Password", with: @webhook.password
      fill_in "Token", with: @webhook.token
      fill_in "Type", with: @webhook.type
      fill_in "Url", with: @webhook.url
      fill_in "Username", with: @webhook.username
      click_on "Create Webhook"

      assert_text "Webhook was successfully created"
      click_on "Back"
    end

    test "updating a Webhook" do
      visit webhooks_url
      click_on "Edit", match: :first

      fill_in "Name", with: @webhook.name
      fill_in "Password", with: @webhook.password
      fill_in "Token", with: @webhook.token
      fill_in "Type", with: @webhook.type
      fill_in "Url", with: @webhook.url
      fill_in "Username", with: @webhook.username
      click_on "Update Webhook"

      assert_text "Webhook was successfully updated"
      click_on "Back"
    end

    test "destroying a Webhook" do
      visit webhooks_url
      page.accept_confirm do
        click_on "Destroy", match: :first
      end

      assert_text "Webhook was successfully destroyed"
    end
  end
end
