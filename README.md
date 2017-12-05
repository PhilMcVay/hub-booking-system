# README

A Digital Jersey Coding Programme Project providing online booking facilities to the Digital Jersey hub

## Install

Create a database, user & strong password

Clone the source code

Run `bundle install`

Copy config/appliction.yml.example to config/application.yml:
`cp config/application.yml.example config/application.yml`

Update the database connection parameters

Run rails db:migrate

Run rails db:seed

Done

*Note:* The passwords for the admin users should be changed as soon as possible as they're in public version control.