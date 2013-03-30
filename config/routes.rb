Spree::Core::Engine.routes.draw do
  
	namespace :admin do
		resources :bank_accounts
	end

  resources :orders do
    member do 
      post :confirm_payment
    end
  end
  
end
