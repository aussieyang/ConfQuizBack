Rails.application.routes.draw do

  get '/' => 'dashboard#index'
  get '/dashboard' => 'dashboard#quiz'

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
