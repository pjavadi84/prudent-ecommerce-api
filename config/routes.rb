Rails.application.routes.draw do
  devise_for :users,
           controllers: {
             sessions: 'sessions',
             registrations: 'registrations'
           }

           
           namespace :category_module do
            resources :categories do
              resources :products 
              resources :images
            end
          end


    


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
