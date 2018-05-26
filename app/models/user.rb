class User < ApplicationRecord

devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable,
:validatable

after_create :send_admin_mail
def send_admin_mail
  UserMailer.send_welcome_email(self).deliver_later
end
end
