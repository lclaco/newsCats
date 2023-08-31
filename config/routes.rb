Rails.application.routes.draw do  
  get 'footer/_footer'
  get 'contact/_contact'
  resources :posts  
  get 'home/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post '/reactions', to: 'reactions#user_reaction', as: 'user_reaction'
  get '/my_reactions', to: 'reactions#post_with_reactions', as: 'my_reactions'
  
  root "home#index"
end
