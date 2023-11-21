Rails.application.routes.draw do
  devise_for :users,
           controllers: {
             sessions: 'sessions',
             registrations: 'registrations'
           }

           resources :categories do
            resources :products do
              resources :images, module: :products
            end
        
            resources :images, module: :categories
          end

    


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
