WebhookRails::Engine.routes.draw do
  root 'webhooks#index'
  resources :webhooks
end
