class BankConfirm < ActionMailer::Base

  #def bank_confirmed(name, amount,bank_name,order)
  #  subject = "#{name} has transferred #{Spree::Config.currency} " +
  #      "#{amount} to #{bank_name} for order #{order.number}"
  #  mail(:to => "contact@klairvoyant.com", :from => order.email, :subject => subject);
  #
  #end
  def bank_confirmed()
    mail(:to => "contact@klairvoyant.com", :from => "john@klairvoyant.com", :subject => "hello");

  end
end
