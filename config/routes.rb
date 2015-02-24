Rails.application.routes.draw do
  root to: "channels#index"

  get 'sessions' => 'sessions#show'
  post 'sessions' => "sessions#create", as: :create_session


  get 'channels/:id' => 'channels#show', as: :channel
  # resources :channels


  post 'channel/:channel_id/messages' => 'messages#create', as: :create_message
end
