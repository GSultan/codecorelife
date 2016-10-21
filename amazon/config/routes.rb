Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'home#index', as: :home  # the format is [verb, URL, controller, action] i.e. get , '/' , home, index
  get '/contact' => 'home#contact'  # the format is [verb, URL, controller, action] i.e. get , '/' , home, index
  get '/about' => 'home#about'  # the format is [verb, URL, controller, action] i.e. get , '/' , home, index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/contact_submit' => 'home#contact_submit'

  namespace :admin do
  resources :questions
  # '/index' => 'questions#index'
  end

  # resources :questions do
  # resources :comments
  # #This creates:
  # #(HTTP Verb: post - path: /questions/:id/comments ) ==> comments controller / create action
  # end
  # delete '/questions/:id' => 'questions#destroy'

  get '/faq' => 'home#faq'
  #(HTTP Verb: get - path: /faq ) ==> home controller / faq action
  resources :products do
    get :search, on: :collection
    get :flag, on: :member
    post :approve
    resources :reviews, on: [:create, :destroy]
  end



  get '/products/new' => 'products#new', as: :product_new
  # post '/products' => 'products#create'
  # get '/products' => 'products#index', as: :product
  # get '/products/:id' => 'products#show', as: :product
  # delete 'products/:id' => 'products#destroy'


  resources :questions
  post 'questions/:id/comments' => 'comments#create'
  # (HTTP Verb: post - path: /questions/:id/comments ) ==> comments controller / create action

  # get '/questions/:id'  => 'questions#show'
  # delete '/questions/:id'  => 'questions#destroy'
  # get 'questions/:id/edit' => 'questions#edit'
  # post '/questions/:id/comments' => 'comments#create'
  #(HTTP Verb: delete - path: /questions/:id ) ==> questions controller / destroy action
  #(HTTP Verb: get - path: /questions/:id/edit ) ==> questions controller / edit action
  #(HTTP Verb: get - path: /questions/:id ) ==> questions controller / show action
  # (HTTP Verb: post - path: /questions/:id/comments ) ==> comments controller / create action
  #(HTTP Verb: get - path: /faq ) ==> home controller / faq action


  #:questions refers to the name of the controller
  #


end
