# == Route Map
#
#        Prefix Verb   URI Pattern                   Controller#Action
#        search GET    /results(.:format)            search#search_results
#          root GET    /                             subjects#index
#     exercises GET    /exercises(.:format)          exercises#index
#               POST   /exercises(.:format)          exercises#create
#  new_exercise GET    /exercises/new(.:format)      exercises#new
# edit_exercise GET    /exercises/:id/edit(.:format) exercises#edit
#      exercise GET    /exercises/:id(.:format)      exercises#show
#               PATCH  /exercises/:id(.:format)      exercises#update
#               PUT    /exercises/:id(.:format)      exercises#update
#               DELETE /exercises/:id(.:format)      exercises#destroy
#     resources GET    /resources(.:format)          resources#index
#               POST   /resources(.:format)          resources#create
#  new_resource GET    /resources/new(.:format)      resources#new
# edit_resource GET    /resources/:id/edit(.:format) resources#edit
#      resource GET    /resources/:id(.:format)      resources#show
#               PATCH  /resources/:id(.:format)      resources#update
#               PUT    /resources/:id(.:format)      resources#update
#               DELETE /resources/:id(.:format)      resources#destroy
#      subjects GET    /subjects(.:format)           subjects#index
#               POST   /subjects(.:format)           subjects#create
#   new_subject GET    /subjects/new(.:format)       subjects#new
#  edit_subject GET    /subjects/:id/edit(.:format)  subjects#edit
#       subject GET    /subjects/:id(.:format)       subjects#show
#               PATCH  /subjects/:id(.:format)       subjects#update
#               PUT    /subjects/:id(.:format)       subjects#update
#               DELETE /subjects/:id(.:format)       subjects#destroy
#         users GET    /users(.:format)              users#index
#               POST   /users(.:format)              users#create
#      new_user GET    /users/new(.:format)          users#new
#     edit_user GET    /users/:id/edit(.:format)     users#edit
#          user GET    /users/:id(.:format)          users#show
#               PATCH  /users/:id(.:format)          users#update
#               PUT    /users/:id(.:format)          users#update
#               DELETE /users/:id(.:format)          users#destroy
#         login GET    /login(.:format)              session#new
#               POST   /login(.:format)              session#create
#               DELETE /login(.:format)              session#destroy
#

Rails.application.routes.draw do


  get '/results', :to => "search#search_results", :as => "search"

  root 'subjects#index'

  resources :exercises
  resources :resources
  resources :subjects do
    get 'resources' => 'resources#index'
  end
  resources :users

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
