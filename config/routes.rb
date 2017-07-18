Rails.application.routes.draw do
  root 'messages#main'

  post 'messages', to: 'messages#create'
end
