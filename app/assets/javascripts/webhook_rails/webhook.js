window.WR = window.WR || {};

WR.Webhooks = (function() {
  return {
    init: init
  };

  function init() {
    handleDisplayType();
    onChangeWebhookType();
  };

  function handleDisplayType() {
    let value = $('.type').val();

    if (!!value) {
      $('.types[data-type=\'' + value + '\']').show();
    }
  };

  function onChangeWebhookType() {
    $(document).off('change', '.type');
    $(document).on('change', '.type', function(event) {
      $('.types').hide();
      $('.types input').val('');
      $('.types[data-type=\'' + this.value + '\']').show();
    });
  };
})();
