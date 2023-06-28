# bdd-web-automation-cucumber
Web automation using cucumber, ruby and capybara

## Installation
1. [Git](https://www.atlassian.com/git/tutorials/install-git)
2. [Ruby 2.5.5](https://www.phusionpassenger.com/library/walkthroughs/deploy/ruby/ownserver/nginx/oss/install_language_runtime.html)
3. Install chrome driver https://chromedriver.chromium.org/ choose based on your chrome in local ex: https://chromedriver.storage.googleapis.com/index.html?path=88.0.4324.96/ for google chrome 88
4. Gem install bundler
5. bundle install

## Running command
   Profile configuration : config/cucumber.yml

| Platform                  | Command                                                |
|---------------------------|------------------------------------------------------- |
| **API**                   | `bundle exec cucumber -p api --tag @api`               |
| **Web Login**             | `bundle exec cucumber -p web --tag @login`             |
| **Web REgister**          | `bundle exec cucumber -p web --tag @register`          |


## Folder Structure
For your convenient please put the file based on the folder structure.

```
|features
|--Web
│   ├── helper
│   │   └── env.rb
│   ├── page_object
│   │   ├── login.rb
│   │   ├── onboarding.rb
│   │   ├── register_page.rb
│   │   ├── reset_password.rb
│   ├── step_definitions
│   │   ├── base_steps.rb
│   │   ├── onboarding_steps.rb
│   │   ├── login_steps.rb
│   ├── login.feature
|--api
│   ├── helper
│   │   └── env.rb
│   ├── step_definitions
│   │   ├── api_steps.rb
│   ├── scenario
│   │   ├── api.feature

```
