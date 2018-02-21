# README
# Bloccit

Bloccit is Rails based, forum application (aptly named after a well known forum site).

As with any most online forums, Bloccit features a user system with various permission levels. Users can upvote or downvote posts within a topic, which plays a role in the sorting algorithm (along with the posts' recency). 

Frequent users can favorite posts they want to watch closely, and they will receive an email when someone posts something new! 

## Getting Started

These instructions will help you set up Bloccit on your local machine for development and testing purposes. 

### Prerequisites

Bloccit uses SendGrid as a mailer - so you will need to set up an account at https://sendgrid.com/. You will need to create an config/application.yml file in order to house your SendGrid username and password (be sure to add that file to your .gitignore or else SendGrid will ban your account). There is an example YML file in config/application.example.yml.

If you want to test the application before pulling it, Bloccit is deployed on Heroku at https://calm-gorge-15933.herokuapp.com/

### Installing

After you set up your config/application.yml file and pull Bloccit from GitHub, you will need to run a `bundle install`. There is a seed file already built out if you want to prepopulate the database. Run a rails server to start the application on your local host!

## Built With

* [Rails5](http://rubyonrails.org/) - Ruby Framework
* [SendGrid](https://sendgrid.com/) - User Authentication Gem
* [Heroku](https://www.heroku.com/) - Cloud Application Platform

## Authors

* **Brandan Hummell** Full Stack Developer - [GitHub](https://github.com/Brandan-Hummell)

* **Bloc** Checkpoint Coordinator - [Bloc](https://github.com/Bloc/)  

See also the list of [contributors](https://github.com/Brandan-Hummell/bloccit/graphs/contributors) who participated in this project.

## Acknowledgments

* [Bloc](https://github.com/Bloc/) - Created checkpoints to help guide me through the Bloccit development process.