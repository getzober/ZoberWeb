$(document).ready(function() {
    Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'));
});
