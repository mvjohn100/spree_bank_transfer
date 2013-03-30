module Spree
	CheckoutController.class_eval do
		before_filter :load_bank_accounts

		private

		def load_bank_accounts
			@bank_accounts = BankAccount.all
		end
	end
end