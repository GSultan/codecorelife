Rails.application.routes.draw do
  #this means when we receive a GET request with '/' URL we invoke the index action within the Home Controller
  #rails convention here is that you just write Home. not Home_controller , rails knows
  get '/' => 'home#index', as: :home  # the format is [verb, URL, controller, action] i.e. get , '/' , home, index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/contact' => 'home#contact'

  post '/contact_submit' => 'home#contact_submit'
  # as: :contact #rails auto-generated a URL helper called contact_path (and contact_url)
end
