Rails.application.routes.draw do
 
 root 'pages#home'
 
  get '/home', to: 'pages#home'
  
  #get '/recipes', to: 'recipes#index'
  #get '/recipes/new', to: 'recipes#new', as: 'new_recipe'
  #post '/recipes', to: 'recipes#create'
  #get '/recipes/:id/edit', to: 'recipes#edit', as: "edit_recipe"
  #atch '/recipes/:id', to: 'recipes#update'
  #get '/recipes/:id', to: 'recipes#show', as: 'recipe'
  #delete '/recipes/:id', to: 'recipes#destroy'
  
  resources :recipes do
    member do
      post 'like'
   end
  end
  

  
  #resources :recipes provides all the default routes that we need. Type in rake routes to see all the routes that are created via the command resources :recipes
end