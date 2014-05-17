Etsydemo::Application.routes.draw do
  resources :orders

  devise_for :users

  resources :listings do
    resources :orders
  end



  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'
  get 'seller' => "listings#seller"



  root 'listings#index'

  
end
