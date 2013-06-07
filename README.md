# GooglePlayApi

This Google Play API gem is inspired by the desire to have
something like [Supermarket](https://github.com/jberkel/supermarket)
that doesn't require Java JARs under the hood. This incarnation
uses [LocalShred's protobuf implementation](https://github.com/localshred/protobuf)
and the .proto definitions for Google Play discovered on the
[android-market-api Google Code project](https://code.google.com/p/android-market-api)

## Installation

Add this line to your application's Gemfile:

    gem 'google_play_api'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install google_play_api

## Usage

This gem was created for use by the [Appygram](https://www.appygram.com)
service and so it currently prioritizes the things that Appygram cares
about, like capturing reviews. Pull requests are welcome to expand on
the features.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
