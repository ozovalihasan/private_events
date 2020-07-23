# Private-events [![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/ozovalihasan/private_events)

[![License](https://img.shields.io/badge/License-MIT-green.svg)]()
![GitHub followers](https://img.shields.io/github/followers/imhilla?label=imhilla&style=social)
![Twitter URL](https://img.shields.io/twitter/follow/hillarykiptoo_?label=Follow&style=social) [![License](https://img.shields.io/badge/License-MIT-green.svg)]()
![GitHub followers](https://img.shields.io/github/followers/ozovalihasan?label=ozovalihasan&style=social)
![Twitter URL](https://img.shields.io/twitter/follow/ozovalihasan?label=Follow&style=social)

> This is a Microverse Ruby and Rails Project

> Private-events!

## Description

In this project, we built an application named Private Events which behaves similar to Eventbrite. The main goal is to put in practice the main concepts of Associations in rails.

This is a similar application like eventbrite which allows users to create events and then manage user signups. Users can create events and send invitations. Events take place at a specific date and location.

## Features

In this project, the following actions are done;

### Setup signin and signup

- Modeled the data of the application, including the necessary tables.
- Created a new Rails application and Git repo called private-events.
- Built and migrated User model.
- Created a simple Users controller and corresponding routes for #new, #create, and #show actions.
- Created a form where users can sign up and also signin in the #show page.

### Basic Events

- Built and migrated Event model.
- Added association between the event creator (a User) and the event.
- Added the foreign key to the Events model as necessary.
- Modified User’s Show page to list all the events a user has created.
- Created an EventsController and corresponding routes to allow you to create an event.
- Created form for creating an event which contains a :description field.
- Created the Event Index page to display all events.

### Event Attendance

- Added association between the event attendee (also a User) and the event.
- Created and migrated all necessary tables and foreign keys.
- Made an Event’s Show page display a list of attendees.
- Made a User’s Show page display a list of events they are attending.
- Modified the User’s Show page to separate those events which have occurred in the past
- Refactored the “upcoming” and “past” methods into simple scopes.
- Added navigation links.

## Built With

- Ruby on rails
- Git
- Shields.io

## Setup

- Clone this repository
- Open terminal
- Change directory by using `cd members-only/`
- Run `bundle install`
- Open rails server by using `rails s`
- Open browser and go to http://localhost:3000

## Test

- Setup it
- Run `rspec`

## Authors

Reach out to us at one of the following places!

👤 **Hillary Kiptoo**

- LinkedIn: [Hillary Kiptoo](https://www.linkedin.com/in/hillarykiptoo)
- Github: [@imhilla](https://github.com/imhilla)
- Twitter: [@hillarykiptoo](https://twitter.com/hillarykiptoo_)

👤 **Hasan Özovalı**

- LinkedIn: [Hasan Ozovali](https://www.linkedin.com/in/hasan-ozovali/)
- Github: [@ozovalihasan](https://github.com/ozovalihasan)
- Twitter: [@ozovalihasan](https://twitter.com/ozovalihasan)
- Mail: [ozovalihasan@gmail.com](ozovalihasan@gmail.com)

## Contributing 🤝

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](./issues/).

## Acknowledgments

- Thanks to Microverse for its support!

## Show your support

Give a ⭐️ if you like this project!

## License

[![License](http://img.shields.io/:license-mit-blue.svg?style=flat-square)](http://badges.mit-license.org)

- **[MIT license](http://opensource.org/licenses/mit-license.php)**
