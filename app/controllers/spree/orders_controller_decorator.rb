module Spree
  OrdersController.class_eval do
    def confirm_payment
      @order = Order.find_by_number!(params[:id])
      
      #twilio_sid = @order.payment.payment_method.preferred_twilio_sid
      #twilio_token = @order.payment.payment_method.preferred_twilio_token
      #twilio_from = @order.payment.payment_method.preferred_twilio_from
      #twilio_to = @order.payment.payment_method.preferred_twilio_to
      #
      #sms_body = "#{params[:name]} has transferred #{Spree::Config.currency} " +
      #"#{params[:amount]} to #{params[:bank_name]} for order #{@order.number}"
      #
      #require 'twilio-ruby'
      #
      #@client = Twilio::REST::Client.new twilio_sid, twilio_token
      #
      #@client.account.sms.messages.create(
      #  :from => twilio_from,
      #  :to => twilio_to,
      #  :body => sms_body
      #)

      @order.payment_confirmed = true
      @order.save

      @name=params[:name];
      @amount=params[:amount];
      @bank_name=params[:bank_name];

      #BankConfirm.deliver_bank_confirmed(@name,@amount,@bank_name,@order);
      BankConfirm.bank_confirmed().deliver



      redirect_to @order
    end
  end
end