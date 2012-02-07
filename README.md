# Blazing Passenger

Passenger related recipes for [blazing](http://github.com/effkay/blazing)

## Installation

Add `gem 'blazing-passenger'` to your `Gemfile`

## Usage

Enable the recipes you want in your blazing configuration file:

* `recipe :passenger_restart` will touch tmp/restart.txt so passenger gets restarted after a deployment

* `recipe :passenger_kickstart <URL>` will make a GET request on the given URL to kickstart passenger. Note: you must priovide the full URL including protocol (http/https...) 

## Authors

Felipe Kaufmann ([@effkay][])

## License

See the [MIT-LICENSE file](https://github.com/effkay/blazing/blob/master/MIT-LICENCE)

[@effkay]: https://github.com/effkay