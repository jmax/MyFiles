Rails.application.routes.draw do
  devise_for :users

  resources :uploads, only: [:index, :new, :create]

  put "uploads/:upload_id/likes" => "likes#update"

  root to: "home#index"
end
