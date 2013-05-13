[![Code Climate](https://codeclimate.com/github/JonRowe/ping_pong.png)](https://codeclimate.com/github/JonRowe/ping_pong)
[![Build Status](https://secure.travis-ci.org/JonRowe/ping_pong.png)](http://travis-ci.org/JonRowe/ping_pong)

# PingPong

Simple gem to respond to ping calls without going down the `rack` stack.

## Installation

Add this line to your application's Gemfile:

    gem 'ping_pong'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ping_pong

## Usage

In your Rack config:

    use PingPong

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
