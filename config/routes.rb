Rails.application.routes.draw do
  devise_for :customer_admins, :controllers => {
    registrations: 'customer_admins/registrations',
    sessions: 'customer_admins/sessions',
    :confirmations:  'customer_admins/confirmations',
    :passwords:  'customer_admins/passwords'
  }
  devise_for :admins
  mount Ckeditor::Engine => '/ckeditor'
  root to: "posts#index"

  resources :posts
  resources :articles
end
