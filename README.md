# Argon RuboCop

The `argon-rubocop` gem provides RuboCop rules for Planet Argon developers based on our styleguide.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'argon-rubocop', github: 'planetargon/argon-rubocop', require: false
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install argon-rubocop

## Usage

For vanilla Ruby projects, add the following to your `.rubocop.yml`:

```yaml
inherit_gem:
  argon-rubocop: config/rubocop.yml
```

For Rails projects, add the following to your `.rubocop.yml`:

```yaml
inherit_gem:
  argon-rubocop: config/rubocop.rails.yml
```

The `rubocop.rails.yml` config file inherits from `rubocop.yml` and adds Rails-specific configuration.

Use this command to have the gem analyze your codebase:
`bundle exec rubocop`

## Development

After checking out the repo, run `bin/setup` to install dependencies.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).
