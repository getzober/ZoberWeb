class PurchaseMailer < ActionMailer::Base
  layout 'purchase_mailer'
  default from: "zober <getzober@zober.co>"
  def purchase_receipt purchase
    @purchase = purchase
    mail to: purchase.email, subject: "thank you for joining the crew here at zober"
  end
end
