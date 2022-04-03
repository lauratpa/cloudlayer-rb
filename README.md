# Cloudlayer-rb

This as an api wrapper for [cloudlayer.io](https://docs.cloudlayer.io/)

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add cloudlayer-rb

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install cloudlayer-rb

## Usage

```ruby
client = Cloudlayer::Client.new(api_key: 'your_api_key')

client.test # check that the api key is set up correctly
client.account # Cloudlayer::AccountInstance
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

This gem also includes rbs file. Run `rake test_sig` to test the rbs file against specs.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/cloudlayer-rb.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
