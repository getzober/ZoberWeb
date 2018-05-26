class AdminController < ApplicationController
def show
  @admin = Admin.find(params[:id])
end

# GET /admin
def index
 @admin = Admin.all
end
end

private
def admin_params
params.require(:admin).permit(
                             :email,
                             :password)
end
