Rails.application.routes.draw do


  devise_for :users, path: 'users', controllers: {
    sessions: "users/sessions"
  }

  devise_for :owners, path: 'owners', controllers: {
    sessions: "owners/sessions"
  }

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end



# Prefix Verb                       URI Pattern                     Controller#Action
# new_user_session        GET    /users/sign_in(.:format)        users/sessions#new
# user_session            POST   /users/sign_in(.:format)        users/sessions#create
# destroy_user_session    DELETE /users/sign_out(.:format)       users/sessions#destroy
# new_user_password       GET    /users/password/new(.:format)   devise/passwords#new
# edit_user_password      GET    /users/password/edit(.:format)  devise/passwords#edit
# user_password           PATCH  /users/password(.:format)       devise/passwords#update
#                         PUT    /users/password(.:format)       devise/passwords#update
#                         POST   /users/password(.:format)       devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)         devise/registrations#cancel
# new_user_registration   GET    /users/sign_up(.:format)        devise/registrations#new
# edit_user_registration  GET    /users/edit(.:format)           devise/registrations#edit
# user_registration       PATCH  /users(.:format)                devise/registrations#update
#                         PUT    /users(.:format)                devise/registrations#update
#                         DELETE /users(.:format)                devise/registrations#destroy
#                         POST   /users(.:format)                devise/registrations#create
# new_owner_session       GET    /owners/sign_in(.:format)       owners/sessions#new
# owner_session           POST   /owners/sign_in(.:format)       owners/sessions#create
# destroy_owner_session   DELETE /owners/sign_out(.:format)      owners/sessions#destroy
# new_owner_password      GET    /owners/password/new(.:format)  devise/passwords#new
# edit_owner_password     GET    /owners/password/edit(.:format) devise/passwords#edit
# owner_password          PATCH  /owners/password(.:format)      devise/passwords#update
#                         PUT    /owners/password(.:format)      devise/passwords#update
#                         POST   /owners/password(.:format)      devise/passwords#create
# cancel_owner_registration GET    /owners/cancel(.:format)        devise/registrations#cancel
# new_owner_registration    GET    /owners/sign_up(.:format)       devise/registrations#new
# edit_owner_registration   GET    /owners/edit(.:format)          devise/registrations#edit
# owner_registration        PATCH  /owners(.:format)               devise/registrations#update
#                           PUT    /owners(.:format)               devise/registrations#update
#                         DELETE /owners(.:format)               devise/registrations#destroy
#                         POST   /owners(.:format)               devise/registrations#create
#   root                  GET    /                               pages#home
