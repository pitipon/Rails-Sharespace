Rails.application.routes.draw do

  devise_for :users, path: 'users', controllers: {
    sessions: "users/sessions"
  }

  devise_for :owners, path: 'owners', controllers: {
    sessions: "owners/sessions"
  }

  # Root for User
  authenticated :user do
    root to: 'workspaces#index_user', as: :authenticated_user

      resources :user, only: [] do
        get '/workspaces', to: 'workspaces#index_user'
        get '/workspaces/:id', to: 'workspaces#show_by_user', as: 'workspaces_show_by_user'
      end
  end

  # Root for Owner
  authenticated :owner do
    root to: 'workspaces#index_owner', as: :authenticated_owner
    resources :owner ,only: [] do

      get '/workspaces', to: 'workspaces#index_owner'
      post '/workspaces', to: 'workspaces#create_by_owner' , as: 'create_new_workspace'
      get '/workspaces/new_by_owner', to: 'workspaces#new_by_owner', as: 'new_workspace'
      get '/workspaces/:id', to: 'workspaces#show_by_owner', as: 'workspaces_show_by_owner'
    end
  end

  # Root for Visitor
  root to: 'pages#home'
  # resources :workspaces



  resources :orders, except: [:new, :create] do
    namespace :actions do
      post :approve
      post :reject
      post :confirm
    end
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
