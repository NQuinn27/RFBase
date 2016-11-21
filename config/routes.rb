Rails.application.routes.draw do
  devise_for :customer_admins, :controllers => { registrations: 'customer_admins/registrations' }
  devise_for :admins
  mount Ckeditor::Engine => '/ckeditor'
  root to: "posts#index"

  resources :posts
  resources :articles
end
