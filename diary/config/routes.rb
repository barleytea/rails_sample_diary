Rails.application.routes.draw do
  resources :simple_diaries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users', to: 'users#index'
  get '/users/japan' # to 以下は省略可能
end
