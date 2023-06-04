Rails.application.routes.draw do
  root 'guranya#main'
  get '/make_joke', to: 'guranya#make_joke'
  get '/num_fact', to: 'guranya#num_fact'
  get '/cat_breed', to: 'guranya#cat_breed'
  get '/main', to: 'guranya#main'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
