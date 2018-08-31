class User < ApplicationRecord
  has_many :user_roles
  has_many :roles, through: :user_roles

  devise :database_authenticatable, 
    :registerable, 
    :recoverable, 
    :rememberable, 
    :trackable,
    :validatable
  
  after_create :send_admin_mail

  def send_admin_mail
    UserMailer.send_welcome_email(self).deliver_later
  end

end
