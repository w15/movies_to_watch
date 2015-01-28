Rails.application.routes.draw do

  get("/films", { :controller => "movies", :action => "index" })

  get("/films/:id", { :controller => "movies", :action => "show" })

end
