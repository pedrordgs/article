Rails.application.routes.draw do
  get 'welcome/hello'
  get 'login' => 'sessions#new'
  get 'signup'  => 'users#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :users

  resources :articles do
    resources :comments
  end

  resources :searches

  root 'welcome#hello'
end
