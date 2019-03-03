class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :get_laundry

  private
  def get_laundry
    @laundry = Laundry.first
  end
  def user_not_authorized
    if params[:controller] == 'subscriptions'
      redirect_to new_subscription_path, notice: "You are not allowed to perform this action"
    else
      redirect_to root_path, notice: "You are not allowed to perform this action"
    end
  end
end
