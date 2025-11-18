# README

created the project with:

`rails new eventz`

generate the controller

`rails g controller events`

generate the model

`rails g model event name:string location:string price:decimal`

see all available tasks

`rails -T`

run the migration

`rails db:migrate`

check the status

`rails db:migrate:status`

you can add a record from the console with either:

```
e = Event.new
e.save
```

or in one line with

`Event.create`

some helpful db commands:

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

migrations to modify existing tables...
think of migration files of a point in time at which you change the database. an audit trail for all the changes.

create a migration to add columns

`rails g migration AddFieldsToEvents starts_at:datetime description:text`

^ two conventions be followed here... 'ToEvents' and '\_at'.

rails has a bunch of built in view helpers to clean up & format your views. for example:

`number_to_currency(event.price, precision: 0)`'

`truncate(event.description, length: 35, separator: ' ')`

`event.starts_at.strftime("%B %d at %I:%M %P")`

any time you need to format something in your view, look to built-in view-helpers.
if there isn't one that already exists, try creating your own inside \_helper.rb!

## Notes

`rails` to see what commands are available

controller names are _plural_

model names are _singular_

#### Docker:

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



