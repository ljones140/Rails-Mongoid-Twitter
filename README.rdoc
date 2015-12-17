# Rails Mongoid Twitter

This is a basic twitter clone built so I can understand how rails works with
MongoDB. Mongoid has been used as the ODM to map the Rails models to the MongoDB
documents.

Application is tested with RSpec and uses Capybara for the feature tests.

## Steps I followed to Set Up
application was generated with switch 

```sh
rails new myapp --skip-active-record
```
gemfile requires
```sh
gem 'mongoid', '~> 5.0.0'
```

after bundling run the below command to generate the *mongoid.yml*
```sh
rails g mongoid:config
```
