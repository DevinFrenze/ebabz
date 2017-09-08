# README

[ebabz.org](http://ebabz.org)
[ebabzfest.com](http://ebabzfest.com)

## Getting Started

To get started in your local dev environment:
* `bundle install`
* `rails db:create`
* `rails db:migrate`
* `rails db:seed`
* `rails s`

## Editing DB

This project uses [RailsAdmin](https://github.com/sferik/rails_admin).
Go to the `/admin` route to login and start editing.

There is no administrator seeded by default, to create an administrator:
* `rails c` in project root
* `Admin.create(email: "admin@email.com", password: "password")`

## Deployment

This project is deployed on AWS Elastic Beanstalk.
To be able to setup elastic beanstalk you'll have to be an authorized user.

To setup elastic beanstalk on macOS:
* `brew install aws-elasticbeanstalk`
* `eb init -i` and fill out the options
* `eb deploy ebabz-production` to deploy
