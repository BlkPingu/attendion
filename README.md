# Attendion

A web app to create and attend events. Open source, free, not caring about your data.

## Before you start

Attendion is deployed on Heroku: https://attendion.herokuapp.com/ - have a look around!

## Getting started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. 

## Prerequisites

You need Ruby 2.4.1 and Rails 5.1.6 installed.

## Installing

Fork the repository and clone it to your own local machine. If you have Ruby and Rails installed, change to the directory (`cd attendion`) and type `bundle install --without production` to install all required gems. Finally, type `rails test` to check if everything works as intended before running `bin/rake db:migrate RAILS_ENV=development` to make the app work locally. Finally, start the server with `rails server`. You can now access the webpage at `http://localhost:3000/`.

## Contributing

We're happy to chat if you have any additional ideas to improve Attendion! Contact us on Twitter (@attendion) or comment on our issues.

## Authors

tobias (BlkPingu) and tabea (einhorntee)
