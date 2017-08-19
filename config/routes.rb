Rails.application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'about',      to: "about#index"
  get 'apply',      to: "apply#index"
  get 'history',    to: "history#index"
  get 'vendors',    to: "vendors#index"
  get 'volunteer',  to: "about#index"

  root 'home#index'
end
