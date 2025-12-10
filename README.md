# README

![Uptime Robot status](https://img.shields.io/uptimerobot/status/m801964530-8909c3e8a4aa3aa372cb61a7)

![Docker](https://img.shields.io/badge/docker-enabled-blue?logo=docker)
![Docker Compose](https://img.shields.io/badge/docker--compose-enabled-blue?logo=docker)

![Docker Build](https://img.shields.io/github/actions/workflow/status/mikeygough/eventz/docker-build.yml?label=docker%20build)

Eventz is a simple Rails application that allows users to create and view events. It was part of a Ruby on Rails course from the Pragmatic Studio that I adapted to learn about Docker, DevOps and Deployments.

## Getting Started

First clone: `git clone https://github.com/mikeygough/eventz.git`

Then: `cd eventz`

Finally, build: `docker compose up`

## Live Deployment

The app is also available publicly at
https://eventz.apps.mikeygough.dev/

<hr>

### Ruby on Rails notes...

#### Rails commands:

see what commands are available: `rails`

created the project with: `rails new eventz`

generated the controller: `rails g controller events`

generated the model: `rails g model event name:string location:string price:decimal`

see all available tasks: `rails -T`

run migrations: `rails db:migrate`

check db migrate status: `rails db:migrate:status`

#### Helpful Active Record commands:

add a record from the console with either:

```
e = Event.new
e.save
```

or

`Event.create`

some helpful methods:

```
Event.count
Event.all
Event.find(1)
Event.find_by(name: "Kata Camp")
e = Event.find(1)
e.update(name: "Kata Camp Deluxe", price: 100.00)

Event.create(name: "Doomed")
e = Event.find_by(name: "Doomed")
e.destroy
```

#### Migrations:

you can think of migration files as a point in time at which you change the database, an audit trail for all the changes.

for example, create a migration to add columns: `rails g migration AddFieldsToEvents starts_at:datetime description:text`

##### View helpers:

Rails has a bunch of built in view helpers to clean up & format your views. for example:

`number_to_currency(event.price, precision: 0)`'

`truncate(event.description, length: 35, separator: ' ')`

`event.starts_at.strftime("%B %d at %I:%M %P")`

any time you need to format something in your view, look to built-in view-helpers.
if there isn't one that already exists, try creating your own inside \_helper.rb!

#### Misc. Notes:

controller names are _plural_

model names are _singular_

### Docker Notes & Helpful Commands:

build the containers
`docker compose build`

create the database
`docker compose run web rails db:create`

run migrations
`docker compose run web rails db:migrate`

start everything
`docker compose up`

verify that containers are running with
`docker compose ps`

check the logs with
`docker compose logs`

or stream the logs with
`docker compose logs -f`

then verify that rails is using postgres with
`docker compose run web rails console`

`ActiveRecord::Base.connection.adapter_name`

stop everything
`docker compose down`

and when you want to start again,
`docker compose up`

some other useful commands are:

stop containers but don't remove them
`docker compose stop`

start stopped containers
`docker compose start`

restart everything
`docker compose restart`

see what's using resources
`docker compose ps`

`docker ps`

live resource usage
`docker stats`

delete everything, including data:
`docker compose down -v`
