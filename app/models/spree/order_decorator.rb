module Spree
  Order.class_eval do
    attr_accessible :payment_confirmed
  end
end