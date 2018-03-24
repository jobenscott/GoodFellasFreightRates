Rails.application.routes.draw do
  root 'dashboard#home'

  get 'dashboard/get_rates' => 'dashboard#get_rates'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
