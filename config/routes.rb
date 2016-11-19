Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root to: "posts#index"

  resources :posts
  resources :articles
end
