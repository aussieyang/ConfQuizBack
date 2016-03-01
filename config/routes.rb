Rails.application.routes.draw do

  get '/' => 'dashboard#index'
  get '/login' => 'dashboard#login'
  get '/speaker/:id' => 'dashboard#speaker'

  get '/new' => 'dashboard#create'

  namespace :api do
    resources :questions
  end

  namespace :api do
    resources :quizzes
  end

  namespace :api do
    resources :users
  end

  root 'pages#home'

end
