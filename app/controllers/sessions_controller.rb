class SessionsController < ApplicationController
  def create
    customer = Braintree::Customer.create(
      first_name: params[:first_name],
      last_name: params[:last_name]
    ).customer
    session[:customer_id] = customer.id
    Customer.create braintree_id: customer.id

    redirect_to :payments, notice: "Customer logged in"
  end

  def destroy
    session[:customer_id] = nil
    redirect_to :root, notice: "Customer logged out"
  end
end
