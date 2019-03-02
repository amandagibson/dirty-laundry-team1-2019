class SubscriptionsController < ApplicationController
  def new
  end

  def create
  end

  private
  def user_not_authorized
    if params[:controller] == 'subscriptions'
      redirect_to new_subscription_path,
      notice: "You must be logged in to access these features."
    else
      redirect_to root_path, notice: "You must be logged in to access these features."
    end
  end
end