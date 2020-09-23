require_dependency "webhook_rails/application_controller"

module WebhookRails
  class WebhooksController < ApplicationController
    before_action :set_webhook, only: [:show, :edit, :update, :destroy]

    # GET /webhooks
    def index
      @webhooks = Webhook.all
    end

    # GET /webhooks/1
    def show
    end

    # GET /webhooks/new
    def new
      @webhook = Webhook.new
    end

    # GET /webhooks/1/edit
    def edit
    end

    # POST /webhooks
    def create
      @webhook = Webhook.new(webhook_params)

      if @webhook.save
        redirect_to @webhook, notice: 'Webhook was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /webhooks/1
    def update
      if @webhook.update(webhook_params)
        redirect_to @webhook, notice: 'Webhook was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /webhooks/1
    def destroy
      @webhook.destroy
      redirect_to webhooks_url, notice: 'Webhook was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_webhook
        @webhook = Webhook.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def webhook_params
        params.require(:webhook).permit(:name, :token, :username, :password, :url, :type)
      end
  end
end
