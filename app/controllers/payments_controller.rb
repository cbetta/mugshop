class PaymentsController < ApplicationController
  def new
    @client_token = Braintree::ClientToken.generate(
      customer_id: customer.id
    )
  end

  def create
    Braintree::Customer.update(
      customer.id,
      first_name: params[:first_name],
      last_name: params[:last_name]
    )

    result = Braintree::Transaction.sale(
      amount: "10.00",
      customer_id: customer.id,
      payment_method_nonce: params[:payment_method_nonce],
      options: {
        submit_for_settlement: true
      }
    )
    redirect_to :transactions
  end
end
