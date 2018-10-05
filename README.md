Wisferry.com Documentation
==========================

Getting started
---------------

1. [Install Ruby on Rails](http://installrails.com/) â€“ Follow this walkthrough to get everything you need for Rails set up. (Watch out, this can be tricky.) This tutorial will also walk you through the basics of Rails.
2. Navigate to where you want to save the site using Terminal â€“ `cd path/to/directory`
3. Clone the Bitbucket repository â€“ `git clone https://bitbucket.org/insightcreative/wisferry-rails`
4. Navigate to the cloned site in Terminal â€“ `cd wisferry-rails`
5. Run `bundle install --without production` to install dependencies.
6. Run `rake db:migrate` to set up the database.
7. Run `rake db:seed` to add initial data to the database.
8. Start the local server â€“ `rails server` and open http://localhost:3000 in your browser.
9. Open the site directory in your text editor to start making changes.

Components
----------

### Schedule

To update the schedule:

1. Find the `seeds.rb` file in the `db` directory.
2. Fill in the new schedule dates and times using the functions provided.
3. Run `rails console` in Terminal.
4. Run `Ferry.delete_all` in the Rails console.
5. Exit the Rails console and run `rake db:seed` to seed the database with the new ferry schedule.
6. Check the schedule by running `rails server` and navigating to `localhost:3000` in your browser.
7. Follow the steps in the Deployment section below, push to BitBucket and Heroku.
9. Run `heroku run console`.
10. Run `Ferry.delete_all` in the Heroku console.
11. Exit the Heroku console and run `heroku run rake db:seed`.
12. Check [wisferry.com](http://wisferry.com) to confirm the changes.

Deployment
----------

### Setup

1. [Install the Heroku Toolbelt](https://toolbelt.heroku.com/)
2. Log in to Heroku in Terminal with `heroku login`. The login information can be found in Insight's password document on the company's internal server.
3. Add Heroku as a git remote repository â€“Â `git remote add heroku https://git.heroku.com/wisferry.git`

### Deployment

1. Add and commit your changes using git in Terminal.
2. Push your changes to BitBucket â€“ `git push origin master`
3. Push your changes to Heroku â€“ `git push heroku master`

Logins
------

* Heroku
* AWS
* BitBucket
* Admin

Useful links
------------

* [Install Rails Tutorial](http://installrails.com/)
* [Blogger 2 Tutorial](http://tutorials.jumpstartlab.com/projects/blogger.html) â€“ Most of the wisferry.com app is based on this
