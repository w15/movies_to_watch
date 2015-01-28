# Movies To Watch

In this project, we will build a database of movies, and eventually allow users to keep track of which movies they want to watch. A movie wishlist, essentially.

## Part 1: RCAV + CRUD

I have already generated three models and migrations for Movies, Actors, and Directors using the following commands:


    rails g model movie title year:integer duration:integer description:text image_url

    rails g model actor name image_url bio:text dob

    rails g model director name image_url bio:text dob

("string" is the default datatype if you don't specify one)

To actually create these tables, you need to do

    rake db:migrate

Next, to save you the trouble of adding a bunch of rows through `rails console`, I have included a shortcut. Run this command:

    rake db:seed

This will auto-prepopulate a bunch of rows for you so that we can get down to work.

Your job: make the following URLs work

### Index of all

 - http://localhost:3000/movies
 - http://localhost:3000/actors
 - http://localhost:3000/directors

### Show individual details:

 - http://localhost:3000/movies/15
 - http://localhost:3000/actors/15
 - http://localhost:3000/directors/15
