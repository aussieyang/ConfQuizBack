Rails.application.routes.draw do

  get '/' => 'dashboard#index'
  get '/login' => 'dashboard#login'
  get '/speaker/:id' => 'dashboard#speaker'

  post '/new' => 'dashboard#create_session'
  post '/enable_quiz' => 'dashboard#enable_quiz'

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
