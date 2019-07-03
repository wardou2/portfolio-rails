# CODERLOADER

<image src="/public/downloads/demo.png" />

Hello & welcome to CoderLoader's Ruby on Rails API backend.  This contains the resources supplied to [this repo](https://github.com/wardou2/portfolio-react), the React.js frontend of this project.  Set up this Rails repo first.

### Overview

CoderLoader is an easily maintainable, pretty, single-page portfolio/resume site for coders. It includes a place for icons of your primary skills, featured Githubs, job experience, intro, bio, and contact info. It supports easily switching the order of your skills/jobs/Githubs and color theming.

This was bootstrapped with `rails new --api`, and runs on a PostgreSQL DB.  

Authentication is performed with JWT and Bcrypt.  All `update` actions require the authenticated header to post.

### Installation (OSX/Linux)

- Clone down this repo & run `bundle install` inside the project folder.
- If you don't have Postgres running locally, install [Postgres.app](https://postgresapp.com/downloads.html).
- Run `rails db:setup && rails db:migrate`.
- Edit your username in the seed data (`/db/seeds.rb`).  Password is set via the CODERLOADER_PASSWORD environment variable. (A guide to setting environment variables in OSX can be found [here](https://medium.com/@himanshuagarwal1395/setting-up-environment-variables-in-macos-sierra-f5978369b255)).  You only have to set this when you seed.
- Run `rails db:seed`.  This is the only time you'll need to have set the env variable for your password.  
- Run `rails s` to host on your local machine.
- Test by going to `http://localhost:3000/api/v1/skills` or `your.url/api/v1/users`.  
  - In your `/config/routes.rb`, everything has been `namespace`d inside `api/v1/`.  If you don't wish to follow this convention, simply remove the two `namespace` method calls.  
- The output from `/skills/` should look something like this:

<image src="/public/downloads/api-skills-response.png" />

- Tinker if you like.
- Upload to hosting (for example, [Heroku](http://www.heroku.com).  A good guide to deploying a Rails/React app on Heroku can be found [here](https://medium.com/coding-in-simple-english/deploying-rails-react-app-to-heroku-35e1829242ab).
- Set up the remote database.  If you're set up on Heroku, run `heroku login`.  Once logged in run `heroku run rails db:migrate && heroku run rails db:seed`.  (There's no need to run `db:setup`, as Heroku takes care of this step for you.)
- Test the backend by going to `your.url/api/v1/skills` or `your.url/api/v1/users`.
- Note the root URL of the hosted project (i.e. `http://your.url/api/v1/`).  Your frontend will need to be pointed here.
- You're halfway there!  Now you can install the [React front-end](https://github.com/wardou2/portfolio-react).

### Thanks!
Any changes you want to recommend, simply fork and make a PR, or find Abe on twitter ([@256hertz](http://twitter.com/256hertz)). Happy coding!

(c) 2019 Abe Dolinger & Douglas Ward
