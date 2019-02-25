Rails.application.routes.draw do
  resources :students, only: [:index, :new, :show, :create]
  #get '/students/:id', to: 'students#show', as: 'student'
end
