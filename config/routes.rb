Rails.application.routes.draw do
  # Routes for the Movie resource:
  # Routes to CREATE movies
  get("/movies/new", { :controller => "movies", :action => "new_form" })
  get("/add_movie", { :controller => "movies", :action => "create_row" })

  # Routes to READ movies
  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:id", { :controller => "movies", :action => "show" })


  # Route to DELETE movies
  get("/delete_movie/:id", { :controller => "movies", :action => "destroy" })

  # Routes for the Actor resource:
  # Routes to CREATE actors
  get("/actors/new", { :controller => "actors", :action => "new_form" })
  get("/add_actor", { :controller => "actors", :action => "create_row" })

  # Routes to READ actors
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:id", { :controller => "actors", :action => "show" })

  # Route to DELETE actors
  get("/delete_actor/:id", { :controller => "actors", :action => "destroy" })


  # Routes for the Director resource:
  # Routes to CREATE directors
  get("/directors/new", { :controller => "directors", :action => "new_form" })
  get("/add_director", { :controller => "directors", :action => "create_row" })

  # Routes to READ directors
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:id", { :controller => "directors", :action => "show" })


  # Route to DELETE directors
  get("/delete_director/:id", { :controller => "directors", :action => "destroy" })

end
