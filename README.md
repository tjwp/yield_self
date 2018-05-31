# yield_self

This gem implements the `Object#yield_self` method that is in Ruby 2.5
for earlier versions of Ruby. The `#then` alias that is [coming](https://bugs.ruby-lang.org/issues/14594)
in Ruby 2.6 is also supported.

`#yield_self` is like `#tap` but returns the result of the block instead of `self`:

```ruby
42.tap { |num| num.to_s } #=> 42
42.yield_self { |num| num.to_s } #=> "42"
42.then { |num| num.to_s } #=> "42"
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'yield_self'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install yield_self

The above just defines a `YieldSelf` module that can add the `#yield_self`
instance method to a module.

```ruby
class MyClass
  include YieldSelf
end
```

To include the `YieldSelf` module in `Object` and make the method available
everywhere use:

```ruby
gem 'yield_self', require: 'yield_self/everywhere'
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests.
You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. 
To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`,
which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tjwp/yield_self.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

