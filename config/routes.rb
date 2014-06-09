Rails.application.routes.draw do
  root to: "home#index"

  resources :text_messages
end
