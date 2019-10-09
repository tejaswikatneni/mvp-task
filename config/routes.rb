Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
		namespace :v1 do
			post 'users/sign_in' => 'users#sign_in'
			get 'users/sign_out' => 'users#sign_out'
			post 'mvp/signal' => 'mvp#signal'
			post 'mvp/signal_search' => 'mvp#signal_search'
  		end
 	end
end
