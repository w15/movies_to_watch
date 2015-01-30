Rails.application.routes.draw do

  # Routes to CREATE movies
  get("/movies/new", { :controller => "movies", :action => "new_form" })
  get("/add_movie", { :controller => "movies", :action => "create_row" })

  # Routes to READ movies
  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:id", { :controller => "movies", :action => "show" })


  # Route to DELETE movies
  get("/delete_movie/:id", { :controller => "movies", :action => "destroy" })

end
