class ChargesController < ApplicationController
before_action :authenticate_provider!
  def new
  end

  def create

 product = Product.find(params[:product_id])

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source => params[:stripeToken],
      :plan => product.sku
    )

    # charge = Stripe::Charge.create(
    #   :customer => customer.id,
    #   :amount => product.price_in_cents,
    #   description: 'zober customer',
    #   currency: 'usd'
    # )

purchase = Purchase.create(email: params[:stripeEmail], card: params[:stripeToken], amount: product.price,  currency: "usd",
customer_id: customer.id, product_id: product.id, uuid: SecureRandom.uuid)
redirect_to purchase

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_new_path
  end
end
