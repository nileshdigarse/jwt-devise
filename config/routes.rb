Rails.application.routes.draw do
  # default_url_options :host => "http://localhost:3000"
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # resources :users do 
  resources :dogs_profile
  # end
end
