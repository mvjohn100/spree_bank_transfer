module Spree
	class PaymentMethod::BankTransfer < PaymentMethod

	  def actions
	  	%w{capture void}
	  end

	  def can_capture?(payment)
	  	['checkout', 'pending'].include?(payment.state)
	  end

	  def can_void?(payment)
	  	payment.state != 'void'
	  end

	  def capture(*args)
	  	ActiveMerchant::Billing::Response.new(true, "", {}, {})
	  end

	  def void(*args)
	  	ActiveMerchant::Billing::Response.new(true, "", {}, {})
	  end

	  def source_required?
	  	false
	  end
	end
end