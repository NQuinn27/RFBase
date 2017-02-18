Rails.application.routes.draw do

  devise_for :customer_admins, :controllers => {
    registrations: 'customer_admins/registrations',
    sessions: 'customer_admins/sessions',
    confirmations:  'customer_admins/confirmations',
    passwords:  'customer_admins/passwords',
    unlocks: 'customer_admins/unlocks'
  }

  devise_for :admins
  mount Ckeditor::Engine => '/ckeditor'
  root to: "posts#index"

  resources :posts
  resources :articles
  resources :media_items

  namespace :api do
    namespace :v1 do
      resources :post, only: [:index], controller: "posts"
    end
  end
end
