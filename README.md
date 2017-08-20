# Inciweb

The Ruby Interface to the [Incident Information System](https://inciweb.nwcg.gov)

## Installation

Add this line to your application's Gemfile:

```ruby
gem "inciweb", path: "lib/inciweb"
```

## Usage

### List Incidents

This gem provides a very easier way to retrieve the list of recent incidents,
and we can retrieve those using the following interface.

```ruby
Inciweb::Incident.all
```

### Find an Incident

The incidents listing interface only provides the basic information, but in
some rare cases we might need the status, size of affected area, or any other
details, and that's where the `find` interface fits. Currently it will only
return the additional details but in the future we can add more attributes to it

```ruby
Inciweb::Incident.find(incident_id)
```

### Find by link

The `inciweb` does not provide the incident id directly with their response, we
can normally extract this from the `link`, but lets make it more simpler, this
interface takes the link as an argument and then extract the id and retrieve the
details for that specific incident.

```ruby
Inciweb::Incident.find_by_link(incident_link)
```

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
