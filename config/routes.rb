Rails.application.routes.draw do

  devise_for :users, path: 'users', controllers: {
    sessions: "users/sessions"
  }

  devise_for :owners, path: 'owners', controllers: {
    sessions: "owners/sessions"
  }

  # Root for User
  authenticated :user do
    root to: 'workspaces#home', as: :authenticated_user

      resources :user, only: [] do
        get '/workspaces', to: 'workspaces#home', as: 'workspaces'
      end
  end

  # Root for Owner
  authenticated :owner do
    root to: 'workspaces#index', as: :authenticated_owner
    resources :owner ,only: [] do
      resources :workspaces, only: [:index, :new,:create]
    end
  end

  # Root for Visitor
  root to: 'pages#home'


  resources :orders, except: [:new, :create] do
    namespace :actions do
      post :approve
      post :reject
      post :confirm
    end
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
