Rails.application.routes.draw do
  devise_for :users

  resources :chatrooms do
    resource :chatroom_users
    resources :messages
  end

  root to: "chatrooms#index"

  resources :conversations do
  	resources :mailmessages  	
  end


end
