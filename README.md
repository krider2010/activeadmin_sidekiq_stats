# ActiveadminSidekiqStats

Get an overview of Sidekiq stats in ActiveAdmin dashboard.

## Installation

```ruby
gem 'activeadmin_sidekiq_stats'
```

And then execute:

    $ bundle

## Usage

in your `admin/dashboard.rb` inside `content` block add

```ruby
columns do
    column do
        ActiveAdminSidekiqStats::Panel.inject
    end
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/bilalbudhani/activeadmin_sidekiq_stats.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
