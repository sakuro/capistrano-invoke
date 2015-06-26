# Capistrano::Invoke

This gem adds the good old `invoke` task to Capistrano.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-invoke', require: false
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-invoke

Remember to add this line to your Capfile:

```ruby
require 'capistrano/invoke'
```

## Usage

Add this line to your Capfile and `cap invoke` will run the command given via the environment
variable `COMMAND` on all servers (OR ones specified by `HOSTS` or `ROLES`)

## Restrictions/TODOs

* As this gem passes given `COMMAND` directly to `execute`, command mappings and some neat features of SSHKit (like `within`) are not supported.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sakuro/capistrano-invoke.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

