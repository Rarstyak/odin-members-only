# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

This is rarstyak's solution for the [members only](https://www.theodinproject.com/lessons/ruby-on-rails-members-only) ruby on rails project for the odin project. It's purpose is to practice implementing authentication and authorization using the Devise gem.

Devise modules set to default
- [ ] database authenticatable
- [ ] registerable
- [ ] recoverable
- [ ] rememberable
- [ ] validatable

```
bundle add devise
```

```
rails g devise User username:string email:string password:string

has_many posts
```

```
rails g model Post title:string body:text user:references
```

ToDo
- [ ] for turbo drive install responders gem