module Spree
  OrdersController.class_eval do
    def confirm_payment
      @order = Order.find_by_number!(params[:id])
      @order.payment_confirmed = true
      @order.save
      redirect_to @order
    end
  end
end