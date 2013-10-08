RailsFoundation::Application.routes.draw do
  devise_for :users
  root 'home#index'

  get 'kaboom' => 'home#kaboom'
end
