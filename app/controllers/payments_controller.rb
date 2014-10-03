class PaymentsController < ApplicationController
  def new
    # todo
  end

  def create
    Braintree::Customer.update(
      # todo
    )

    result = Braintree::Transaction.sale(
      # todo
    )
    redirect_to :transactions
  end
end
