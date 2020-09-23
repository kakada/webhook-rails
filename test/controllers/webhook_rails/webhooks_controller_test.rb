require 'test_helper'

module WebhookRails
  class WebhooksControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @webhook = webhook_rails_webhooks(:one)
    end

    test "should get index" do
      get webhooks_url
      assert_response :success
    end

    test "should get new" do
      get new_webhook_url
      assert_response :success
    end

    test "should create webhook" do
      assert_difference('Webhook.count') do
        post webhooks_url, params: { webhook: { name: @webhook.name, password: @webhook.password, token: @webhook.token, type: @webhook.type, url: @webhook.url, username: @webhook.username } }
      end

      assert_redirected_to webhook_url(Webhook.last)
    end

    test "should show webhook" do
      get webhook_url(@webhook)
      assert_response :success
    end

    test "should get edit" do
      get edit_webhook_url(@webhook)
      assert_response :success
    end

    test "should update webhook" do
      patch webhook_url(@webhook), params: { webhook: { name: @webhook.name, password: @webhook.password, token: @webhook.token, type: @webhook.type, url: @webhook.url, username: @webhook.username } }
      assert_redirected_to webhook_url(@webhook)
    end

    test "should destroy webhook" do
      assert_difference('Webhook.count', -1) do
        delete webhook_url(@webhook)
      end

      assert_redirected_to webhooks_url
    end
  end
end
