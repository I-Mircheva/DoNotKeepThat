Rails.application.routes.draw do
  resources :hidden_notes

  root to: "hidden_notes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
