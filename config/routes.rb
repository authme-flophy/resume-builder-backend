Rails.application.routes.draw do
  resources :resumes
  resources :job_experiences
  resources :schools
  resources :positions
  resources :programming_languages
  resources :users, only: [:index, :show, :update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "/login", to: 'sessions#create'
  post "/signup", to: 'users#create'

end
