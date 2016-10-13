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

  resources :questions do
  resources :comments #This creates:
  #(HTTP Verb: post - path: /questions/:id/comments ) ==> comments controller / create action
  end
  # delete '/questions/:id' => 'questions#destroy'

  get '/faq' => 'home#faq'
  #(HTTP Verb: get - path: /faq ) ==> home controller / faq action


end
