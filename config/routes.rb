Rails.application.routes.draw do

  root "contacts#index"

  # Routes for the Latest_interaction resource:
  # CREATE
  get "/latest_interactions/new", :controller => "latest_interactions", :action => "new"
  post "/create_latest_interaction", :controller => "latest_interactions", :action => "create"

  # READ
  get "/latest_interactions", :controller => "latest_interactions", :action => "index"
  get "/latest_interactions/:id", :controller => "latest_interactions", :action => "show"

  # UPDATE
  get "/latest_interactions/:id/edit", :controller => "latest_interactions", :action => "edit"
  post "/update_latest_interaction/:id", :controller => "latest_interactions", :action => "update"

  # DELETE
  get "/delete_latest_interaction/:id", :controller => "latest_interactions", :action => "destroy"
  #------------------------------

  # Routes for the Connection resource:
  # CREATE
  get "/connections/new", :controller => "connections", :action => "new"
  post "/create_connection", :controller => "connections", :action => "create"

  # READ
  get "/connections", :controller => "connections", :action => "index"
  get "/connections/:id", :controller => "connections", :action => "show"

  # UPDATE
  get "/connections/:id/edit", :controller => "connections", :action => "edit"
  post "/update_connection/:id", :controller => "connections", :action => "update"

  # DELETE
  get "/delete_connection/:id", :controller => "connections", :action => "destroy"
  #------------------------------

  # Routes for the Contact resource:
  # CREATE
  get "/contacts/new", :controller => "contacts", :action => "new"
  post "/create_contact", :controller => "contacts", :action => "create"

  # READ
  get "/contacts", :controller => "contacts", :action => "index"
  get "/contacts/:id", :controller => "contacts", :action => "show"

  # UPDATE
  get "/contacts/:id/edit", :controller => "contacts", :action => "edit"
  post "/update_contact/:id", :controller => "contacts", :action => "update"

  # DELETE
  get "/delete_contact/:id", :controller => "contacts", :action => "destroy"
  #------------------------------

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



end
