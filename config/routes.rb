Rails.application.routes.draw do
  resources :resumes
  resources :job_experiences
  resources :schools
  resources :positions
  resources :programming_languages
  resources :users, only: [:index]

  post "/login", to: 'sessions#create'
  delete "/logout", to: 'sessions#destroy'
  post "/register", to: 'users#create'
  get "/me", to: 'users#show'
  get "/:username", to: 'users#profiler'
  get "/superme", to: "users#profile"
end
