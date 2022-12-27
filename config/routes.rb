Rails.application.routes.draw do
  resources :job_experiences
  resources :schools
  resources :positions
  resources :programming_languages
  resources :resumes
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "/login", to: 'sessions#create'
  delete "/logout", to: 'sessions#destroy'
end
