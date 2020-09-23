//= require rails-ujs

//= require jquery3
//= require popper
//= require bootstrap

//= require webhook_rails/webhook

$( document ).ready(function() {
  WR.Webhooks.init();
});
