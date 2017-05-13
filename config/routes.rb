Rails.application.routes.draw do

  devise_for :super_admins
  devise_for :customer_admins, :controllers => {
    sessions: 'customer_admins/sessions',
    confirmations:  'customer_admins/confirmations',
    passwords:  'customer_admins/passwords',
    unlocks: 'customer_admins/unlocks'
  }

  devise_for :admins

  mount Bootsy::Engine => '/bootsy', as: 'bootsy'

  root to: "posts#index"

  resources :posts
  resources :articles
  resources :media_items
  resources :events

  get '/theme/', to: 'theme#edit'
  patch "/theme" => "theme#update"

  get '/bio/', to: 'bio#edit'
  patch "/bio" => "bio#update"

  get '/customer_settings/', to: 'customer_settings#edit'
  patch "/customer_settings" => "customer_settings#update"

  namespace :api do
    namespace :v1 do
      resources :post, only: [:index, :show], controller: "posts"
      resources :bio, only: [:index], controller: "bios"
      resources :calendar, only: [:index], controller: "calendar"
      resources :media, only: [:index, :show], controller: "media"
      resources :theme, only: [:index], controller: "theme"
      resources :user, only: [:create, :show, :update], controller: "app_users"
    end
  end
end
