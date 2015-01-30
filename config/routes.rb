Rails.application.routes.draw do
  # Routes for the Movie resource:
  # CREATE
  get("/movies/new", { :controller => "movies", :action => "new_form" })
  get("/add_movie", { :controller => "movies", :action => "create_row" })

  # READ
  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:id", { :controller => "movies", :action => "show" })

  # UPDATE
  get("/movies/:id/edit", { :controller => "movies", :action => "edit_form" })
  get("/update_movie/:id", { :controller => "movies", :action => "update_row" })

  # DELETE
  get("/delete_movie/:id", { :controller => "movies", :action => "destroy" })
  #------------------------------

  # Routes for the Actor resource:
  # CREAT
  get("/actors/new", { :controller => "actors", :action => "new_form" })
  get("/add_actor", { :controller => "actors", :action => "create_row" })

  # READ
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:id", { :controller => "actors", :action => "show" })

  # DELETE
  get("/delete_actor/:id", { :controller => "actors", :action => "destroy" })
  #------------------------------

  # Routes for the Director resource:
  # CREATE
  get("/directors/new", { :controller => "directors", :action => "new_form" })
  get("/add_director", { :controller => "directors", :action => "create_row" })

  # READ
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:id", { :controller => "directors", :action => "show" })

  # DELETE
  get("/delete_director/:id", { :controller => "directors", :action => "destroy" })
  #------------------------------
end
