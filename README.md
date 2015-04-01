ToDo Thingy
===========

This is a basic ToDo list.

Requirements
=========

You'll need Ruby, Ruby on Rails, and phantomjs.

Built & tested w/ following versions:
- Ruby 2.2.1
- Rails 4.2.1
- SQLite 1.3.10
- PhantomJS 2.0.0

Useful Rake tasks
=================

- Setup => `bundle exec rake setup` (creates & seeds database)
- Reset => `bundle exec rake reset` (drops datebase, then runs `rake setup`)
- Test  => `bundle exec rspec`

Features
========

- Add a ToDo
- Delete ToDo, with options to confirm or cancel
- Compete a ToDo (click on empty box to left of ToDo)

Notes
=====

- ToDo deletion tests require Poltergeist to run properly
- Stuffed JavaScript into ToDo index view for easy reference
- Stuck w/ SQLite to keep it simple, but I prefer PostgreSQL

License
=======

[MIT License](http://www.opensource.org/licenses/MIT)
