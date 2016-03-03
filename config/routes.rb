Rails.application.routes.draw do

  post '/enable_quiz' => 'session#enable_quiz'

  get '/' => 'pages#home'
  get '/login' => 'session#login'
  get '/speaker/:id' => 'session#speaker'
  post '/new' => 'session#create'
  get '/logout' => 'session#destroy'

  get '/api/questions/:id' => 'api/questions#quiz'
  get '/api/users/:id' => 'api/users#show'

  patch '/api/users/:id' => 'api/users#score'




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
