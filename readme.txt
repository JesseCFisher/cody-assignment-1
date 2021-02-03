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

This creates models, views, controllers, and database migrations for a
fully functional CRUD application with one command.

Create database:
rake db:create

migrate database (creates or edits columns in tables from migration
files in db/migrations)
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
file has been changed since last git commit and will not be included in
next git commit. appears in red

staged - file has been changed and will be included in next commit.
appears in green

git commit -m "commit message"

Include a very short but meaningful message. "first commit" is fine.
This tags your changes.

https://www.datacamp.com/community/tutorials/git-push-pull

git push -u origin main

Github recently changed 'master' to 'main'. This is the primary branch
in the repo.
