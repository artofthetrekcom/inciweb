# Inciweb

The Ruby Interface to the [Incident Information System](https://inciweb.nwcg.gov)

## Installation

Add this line to your application's Gemfile:

```ruby
gem "inciweb", path: "lib/inciweb"
```

## Usage


## Development

We are following Sandi Metz's Rules for this gem, you can read the
[description of the rules here][sandi-metz] All new code should follow these
rules. If you make changes in a pre-existing file that violates these rules you
should fix the violations as part of your contribution.

### Setup

Clone the repository.

```sh
git clone https://github.com/artofthetrekcom/inciweb
```

Setup your environment.

```sh
bin/setup
```

Run the test suite

```sh
bin/rspec
```

## Contributing

First, thank you for contributing! We love pull requests from everyone. By
participating in this project, you hereby grant [Art Of The Trek][artofthetrekcom] the right to grant or transfer an unlimited number of non
exclusive licenses or sub-licenses to third parties, under the copyright covering
the contribution to use the contribution by all means.

Here are a few technical guidelines to follow:

1. Open an [issue][issues] to discuss a new feature.
1. Write tests to support your new feature.
1. Make sure the entire test suite passes locally and on CI.
1. Open a Pull Request.
1. [Squash your commits][squash] after receiving feedback.
1. Party!

## Credits

This gem is developed, maintained and funded by [Art Of The Trek][artofthetrekcom]

[artofthetrekcom]: http://artofthetrek.com
[issues]: https://github.com/artofthetrekcom/inciweb/issues
[squash]: https://github.com/thoughtbot/guides/tree/master/protocol/git#write-a-feature
[sandi-metz]: http://robots.thoughtbot.com/post/50655960596/sandi-metz-rules-for-developers
