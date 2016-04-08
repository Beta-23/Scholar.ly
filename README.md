# Scholar.ly
=====
##Description:

This web app connects H.S. students with philanthropist to invest in their college education locally. Transforming the way college education is funded.

##User Stories & Wireframes/ERD's:

[Trello UserStories](https://trello.com/b/ra7PHAfm/scholar-ly)

[Wireframes](https://github.com/Beta-23/Scholar.ly/tree/master/Wireframes_Scholar.ly)

[ERD](https://github.com/Beta-23/Scholar.ly/blob/master/ERD_Scholar.ly/ERD.JPG)

##Technologies Used:

* Ruby on Rails (2.2.1)
* Stripe-API
* Postgresql (Database)
* Bootstrap
* CSS
* HTML
* Google Fonts

====

There are a few commands that are absolutely critical to your everyday usage of Rails. In the order of how much you'll probably use them are:

* rails console
* rails server
* rake
* rails generate
* rails dbconsole
* rails new app_name
* All commands can run * with -h or --help to list more information.

##Configuration

* Here's a quick overview of what each folder/file in our Rails project is:

* app/ - This folder is where most of your application-specific code will go into.

* bin/ - This folder contains executable scripts for your rails project. These are the files that get executed when you run bundle, rails, or rake from the command line.

* config/ - This is for your application's configuration files. The environment folder contains environment-specific (development, production, test) configuration, and all files in the initializers folder will be run when your application boots.

* db/ - This folder contains files for managing your database. Generated migrations will be put into the migrate folder, and a master copy of your application's database schema is contained in schema.rb, which is automatically updated when you run migrations.

* lib/ - This folder contains code that doesn't belong in the app or vendor folder. Any .rake files in lib/tasks will be made available to the rake command.

* log/ - This is where you will find logs produced by your Rails project.

* public/ - This folder is where static files will go. It is recommended to use the app/assets folder to serve assets via the asset pipeline.

* test/ - This folder is for testing related files.

* tmp/ - This folder contains temporary files used by your Rails project.

* vendor/ - This folder is for third-party code. Any code included in the project that isn't managed by you (e.g. code from bower or locally bundled gems) should be put in this folder, and you should avoid editing vendored files.

*.gitignore - A manifest of files to be ignored by git

* Gemfile - Contains the RubyGems required by this project.

* Gemfile.lock - Contains the specific version of all gems and their dependencies used in this project in order to assure the same version is installed on all systems. This file gets updated automatically when you run the bundle command.

* Rakefile - The Rakefile for running tasks for your project.

* config.ru - The rackup file for your project. Rails is a Rack based framework, and uses this file to boot your web server.

=====
## Database creation

* When creating a new Rails application, you have the option to specify what kind of database and what kind of source code management system your application is going to use. This will save you a few minutes, and certainly many keystrokes.

* Database initialization

Via command line:
$rails new . --git --database=postgresql


##Resources: 

[Ruby Docs](http://guides.rubyonrails.org/getting_started.html)

[Stripe-API Docs](https://stripe.com/docs/api)

##Credits:
*Team Leader:  Alex White
*Scrum Team!
*WDI 26 Instructors
*WDI TAs
*Christina, Franchini, Monq, Jehnean, Ryan, Jamine, and Christine...you all rock!
* ...




