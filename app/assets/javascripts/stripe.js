$(document).ready(function() {
  Stripe($('meta[name="stripe-key"]').attr('content'));
});
