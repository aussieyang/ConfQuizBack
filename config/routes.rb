Rails.application.routes.draw do

  get '/' => 'session#index'
  get '/login' => 'session#login'
  get '/speaker/:id' => 'session#speaker'
  post '/new' => 'session#create'
  get '/logout' => 'session#destroy'

  get '/api/questions/:id' => 'api/questions#quiz'

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
