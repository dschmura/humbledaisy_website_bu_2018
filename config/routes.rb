Rails.application.routes.draw do
  root                        to: 'pages#index'
  get 'index',                to: 'pages#index'

  get '/about',               to: 'pages#about'
  get '/about_our_name',      to: 'pages#about_our_name'
  get '/contact',             to: 'pages#contact'
  get '/privacy',             to: 'pages#privacy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
