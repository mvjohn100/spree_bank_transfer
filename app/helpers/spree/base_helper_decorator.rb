module Spree
  BaseHelper.class_eval do
    def available_bank_accounts
      bank_accounts = BankAccount.all
    end
  end
end