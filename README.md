# Reactive Rails with Stimulus Reflex

## Stack

- Ruby 2.7.0
- Rails 6.0.3

## Development

After clone the repo yoou need to run `bundle install` to get all dependencies from Gemfile and then `yarn install` to get all js dependencies.

Redis is necessary to use reflex so to install it with brew just use `brew install redis` and then start the service with `brew services start redis`.

To execute the app run `rails s` or if you prefer you can install foreman `gem install foreman` to run both servers at once, rails server and webpack server, with this command `foreman start`. Also be sure enable cache in dev mode to use reflex `rails dev:cache`.
