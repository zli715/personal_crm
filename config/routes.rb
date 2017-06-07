Rails.application.routes.draw do

  root "contacts#index"

  # Routes for the Latest_job resource:
  # CREATE
  get "/latest_jobs/new", :controller => "latest_jobs", :action => "new"
  post "/create_latest_job", :controller => "latest_jobs", :action => "create"

  # READ
  get "/latest_jobs", :controller => "latest_jobs", :action => "index"
  get "/latest_jobs/:id", :controller => "latest_jobs", :action => "show"

  # UPDATE
  get "/latest_jobs/:id/edit", :controller => "latest_jobs", :action => "edit"
  post "/update_latest_job/:id", :controller => "latest_jobs", :action => "update"

  # DELETE
  get "/delete_latest_job/:id", :controller => "latest_jobs", :action => "destroy"
  #------------------------------

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

  # Routes for the Old_interaction resource:
  # CREATE
  get "/old_interactions/new", :controller => "old_interactions", :action => "new"
  post "/create_old_interaction", :controller => "old_interactions", :action => "create"

  # READ
  get "/old_interactions", :controller => "old_interactions", :action => "index"
  get "/old_interactions/:id", :controller => "old_interactions", :action => "show"

  # UPDATE
  get "/old_interactions/:id/edit", :controller => "old_interactions", :action => "edit"
  post "/update_old_interaction/:id", :controller => "old_interactions", :action => "update"

  # DELETE
  get "/delete_old_interaction/:id", :controller => "old_interactions", :action => "destroy"
  #------------------------------

  # Routes for the Old_job resource:
  # CREATE
  get "/old_jobs/new", :controller => "old_jobs", :action => "new"
  post "/create_old_job", :controller => "old_jobs", :action => "create"

  # READ
  get "/old_jobs", :controller => "old_jobs", :action => "index"
  get "/old_jobs/:id", :controller => "old_jobs", :action => "show"

  # UPDATE
  get "/old_jobs/:id/edit", :controller => "old_jobs", :action => "edit"
  post "/update_old_job/:id", :controller => "old_jobs", :action => "update"

  # DELETE
  get "/delete_old_job/:id", :controller => "old_jobs", :action => "destroy"
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
