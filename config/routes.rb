Rails.application.routes.draw do
  devise_for :users,
           controllers: {
             sessions: 'sessions',
             registrations: 'registrations'
           }

  get '/products', to: 'products#index'
  get '/products/:id', to: 'products#show'


  resource :categories, only: [:index, :show] do
    resources :products, only: [:index, :show] do
      resources :variants, only: [:index, :show]
    end
  end
    


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
