# HunkyDory [![Build Status](https://travis-ci.org/brendanthomas1/hunky_dory.svg?branch=master)](https://travis-ci.org/brendanthomas1/hunky_dory)
Because nobody wants to document feature changes in Microsoft F!@$%^& Word


## Getting Started
Add the gem to your application's Gemfile:
```ruby
gem 'hunky_dory'
```

Bundle and then migrate to get HunkyDory's models:
```bash
bundle
bin/rake db:migrate
```

Then generate the application's controller where you can set up authorization:
```bash
bundle exec rails g hunky_dory:install
```

## Usage
To run the demo from the spec directory:
```bash
cd spec/dummy
rails s
```

Navigate to `/changelog` to see your list of changes

> But I don't like the name "changelog"

Mount the engine wherever you want! Go to your routes file and:
```ruby
mount HunkyDory::Engine => '/your_cool_route_name'
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
