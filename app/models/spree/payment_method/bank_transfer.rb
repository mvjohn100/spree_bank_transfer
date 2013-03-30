module Spree
	class PaymentMethod::BankTransfer < PaymentMethod
		preference :twilio_sid, :string
		preference :twilio_token, :string
		preference :twilio_from, :string
		preference :twilio_to, :string

		attr_accessible :preferred_twilio_sid, :preferred_twilio_token, :preferred_twilio_from, :preferred_twilio_to

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