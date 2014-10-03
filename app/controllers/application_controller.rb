class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  helper_method :customer
  helper_method :logged_in?

  after_filter :update_customer_id

  private

  def logged_in?
    !customer.nil? && !customer.first_name.nil?
  end

  def customer
    @customer ||= begin
      Braintree::Customer.find(session[:customer_id])
    rescue
      Braintree::Customer.create.customer
    end
  end

  def update_customer_id
    session[:customer_id] = customer.id
  end
end
