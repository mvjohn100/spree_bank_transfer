class BankConfirm < ActionMailer::Base

  def bank_confirmed(name, amount,bank_name,order_no)
    subject = "#{name} has transferred #{Spree::Config.currency} " +
        "#{amount} to #{bank_name} for order #{order_no}"
    mail(:to => "contact@klairvoyant.com", :from => @order.email, :subject => subject);

  end
end
