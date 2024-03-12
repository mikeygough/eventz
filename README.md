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

## Notes

`rails` to see what commands are available

controller names are _plural_

model names are _singular_

## Default Rails

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

  ruby 3.1.4p223

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...
