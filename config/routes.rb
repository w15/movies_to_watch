Rails.application.routes.draw do

  get("/movies", { :controller => "movies", :action => "index" })

  get("/movies/new", { :controller => "movies", :action => "new_form" })

  get("/movies/:id", { :controller => "movies", :action => "show" })

  get("/delete_movie/:id", { :controller => "movies", :action => "destroy" })

end
