Rails.application.routes.draw do
  get 'welcome/hello'

  resources :articles do
    resources :comments
  end

  root 'welcome#hello'
end
