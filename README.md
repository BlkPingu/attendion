# README


* Ruby version: 

ruby 2.4.1p111 (2017-03-22 revision 58053) [x86_64-darwin17]

* Rails version:

Rails 5.1.6

* Database creation:

- If you're getting the Error 

> Migrations are pending; run 'bin/rake db:migrate RAILS_ENV=development' to resolve this issue.” after cloning and migrating the project

after starting the project on your machine locally, run:

```
rm -f db/*.sqlite3
      rake db:create
      RAILS_ENV=development rake db:migrate
      rails s -e development
```

* Deployment instructions: 

Deployed on Heroku: https://attendion.herokuapp.com/

* Database initialization:

* System dependencies:

* Configuration:

* How to run the test suite:

* Services (job queues, cache servers, search engines, etc.)
