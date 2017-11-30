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
        # For workspaces
        get '/workspaces', to: 'workspaces#index_user'
        get '/workspaces/:id', to: 'workspaces#show_by_user', as: 'workspaces_show_by_user'


        resources :workspaces, only: [] do

          # create
          get '/orders/new_by_user', to: 'orders#new_by_user', as: 'orders_new_by_user'
          post '/orders', to: 'orders#create_by_user', as: 'orders_create_by_user'
        end

        ## For orders
        # show
        get '/orders/:id', to: 'orders#show_by_user', as: 'orders_show_by_user'
        get '/orders', to: 'orders#show_all_by_user', as: 'orders_show_all_by_user'

        # change state (request -> 'pending') (reject -> 'owner reject') (confirm -> 'owner ok')
        resources :orders, only: [] do
          namespace :actions do
            post :request
            post :reject
            post :confirm
          end
        end

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
  get '/workspaces', to: 'workspaces#index'
  get '/workspaces/:id', to: 'workspaces#show', as: 'workspaces_show'
  root to: 'workspaces#index'


  # resources :orders, except: [:new, :create] do
  #   namespace :actions do
  #     post :approve
  #     post :reject
  #     post :confirm
  #   end
  # end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
