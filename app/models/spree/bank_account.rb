module Spree
	class BankAccount < ActiveRecord::Base
		attr_accessible :bank_name, :bank_branch, :account_owner, :account_number
		validates :bank_name, :bank_branch, :account_owner, :account_number, :presence => true
		validates :account_number, :numericality => { :only_integer => true }
	end
end