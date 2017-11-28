Rails.application.routes.draw do

  resources :workspaces


  devise_for :users, path: 'users', controllers: {
    sessions: "users/sessions"
  }

  devise_for :owners, path: 'owners', controllers: {
    sessions: "owners/sessions"
  }

  # Root for User
  authenticated :user do
    root to: 'pages#user', as: :authenticated_user
  end

  # Root for Owner
  authenticated :owner do
    root to: 'pages#owner', as: :authenticated_owner
    resources :owner ,only: [] do
      resources :workspaces, only: [:new,:create]
    end
  end

  # Root for Visitor
  root to: 'pages#home'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
