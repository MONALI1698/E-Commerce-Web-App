Rails.application.routes.draw do
  root to: redirect('/home', status: 302)
  get 'home', to: 'g_rabit#home', as: 'home'
  get 'messages', to: 'messages#messages', as: 'messages'
  get 'messages/:id', to: 'messages#message_board', as: 'message_board'
  post 'messages/:id', to: 'messages#send_message'
  devise_for :users
  get 'user_profile',to: 'g_rabit#user_profile', as: 'user_profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
