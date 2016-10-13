Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'home#home', as: :home
  post '/' => 'home#home', as: :submit
end
