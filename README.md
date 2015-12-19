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

after bundling run the below command to generate the **mongoid.yml**
```sh
rails g mongoid:config
```

## Testing Differences from Active Record

Factory Girl works the same


### Database Cleaner
There are issues with current Ruby gem version with Mongois but it has been fixed in Git Hub
version so used the declaration below in the Gemfile.
```ruby
  gem 'database_cleaner', :git => 'https://github.com/DatabaseCleaner/database_cleaner.git'
```
Database cleaner behaves differently as MongoDB does not have all the same
methods as an SQL database. For this reason strategy :transaction had to be
removed from spec/support/database_cleaner.rb

### Testing Relationship Matchers.
For testing relationships and validatons exist I normally use the Shoulda and RSpec collection matchers gems. However these are not compatible with Mongoid so I have used the mongoid-rspec gem https://github.com/mongoid-rspec/mongoid-rspec.

