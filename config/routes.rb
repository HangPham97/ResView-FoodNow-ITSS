Rails.application.routes.draw do
  devise_for :admins, path: 'admins'

  root 'static_pages#home'

  devise_for :users, :controllers => { :registrations => :registrations }
  resources :restaurant
  get '/admins' => "admins#home", :as => :admin_root

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
