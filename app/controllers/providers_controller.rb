class ProvidersController < ApplicationController
  # devise :database_authenticatable, :registerable, :recoverable, :reemberable, :trackable, :validatable

  def show
    @provider = Provider.find(params[:id])
  end

 # GET /providers
 def index
   @providers = Provider.all
 end
 end

private
def provider_params
  params.require(:provider).permit(
                               :firstname,
                               :lastname,
                               :organization,
                               :occupation,
                               :email,
                               :role)
end
