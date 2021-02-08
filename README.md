# Assignments 1 and 2

This app has two related resources: `Book` and `Author`

The `author` show page includes their books ordered by published year.

## Instructions


#1
Create a rails application CRUD. Can use scaffolding at first. 

Create table Books
title:string
published_year:integer

Deploy this to Github and post a link to the repo in this channel. 

Learning Goals:
Rails scaffolding
Rails database migrations
Setting up Rails environment

useful commands:

rails new app myapp

Start rails server:
rails s

Stop rails server:
control+c

Create scaffold:
rails g scaffold Pet name:string age:integer

This creates models, views, controllers, and database migrations for a fully functional CRUD application with one command.

Create database:
rake db:create

migrate database (creates or edits columns in tables from migration files in db/migrations)
rake db:migrate

Pushing to Github for submitting assignment -
Setup Github on your computer with credentials

navigate to app folder - 
cd myapp

git init

Run git status a lot to see what is going on.
git status 
This shows what files are staged and unstaged

unstaged - 
file has been changed since last git commit and will not be included in next git commit. appears in red

staged - file has been changed and will be included in next commit. appears in green

git commit -m "commit message"

Include a very short but meaningful message. "first commit" is fine. This tags your changes.

https://www.datacamp.com/community/tutorials/git-push-pull

git push -u origin main

Github recently changed 'master' to 'main'. This is the primary branch in the repo.

#2
Add a migration/model for author. Create a second table

authors
name:string
birth_year:integer

Add foreign key to books - author_id with has_many belongs_to relationship. Add CRUD for authors. Allow the user to select author from a select element.

Deploy this to the same repo and post link in this channel

Learning goals:
Updating a database with migrations
Creating a belongs_to has_many relationship in your database
Updating controller strong parameters

Create a select element which is populated from your Author table in the database.

https://stackoverflow.com/questions/14717707/rails-populating-select-options-from-database

Rails has form helpers that generate the HTML for forms for you. You need to learn how to use them to create html forms and the input elements within them.

https://stackoverflow.com/questions/26317852/adding-new-element-in-rails-form

Rails controllers have "strong parameters." This only allows explicitly accepted parameters on controller methods so you need to update them at the bottom of your your books controller to allow the :author_id parameter. Google "strong parameters rails tutorial."

Also, set the root URL in your routes.rb to "/books". This will display the books list page as the main page of your app at "localhost:3000/"

https://guides.rubyonrails.org/routing.html#using-root

Basically:
Run another scaffold g author command to create the authors table

migrate your database

Add the select element based on authors table

Update strong parameters to allow author_id on books controller

Push to github

