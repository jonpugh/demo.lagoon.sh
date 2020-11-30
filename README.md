# Lagoon Demo Factory

This codebase is for a Drupal 8 site that serves as a web interface to the lagoon demo system to be hosted at [demo.lagoon.sh](https://demo.lagoon.sh).

It is being developed with Lando.

## Getting Started

To develop this project, follow these instructions:

1. Install Lando.

    Visit https://github.com/lando/lando/releases and click "Assets" under the latest release. Download the correct package for your desktop operating system.

2. Clone this codebase and `cd` into the directory.

        git clone git@github.com:jonpugh/demo.lagoon.sh.git
        cd demo.lagoon.sh

3. Launch the lando environment.

        lando start

4. Install and test the site.

        # Just install it.
        lando install

        # Just test it.
        lando test

        # Install/Reinstall and test in one command.
        lando ci

## Composer Usage

This is an instance of the Drupal Composer Drupal Project template.

See more information and instructions for updating this codebase at https://github.com/drupal-composer/drupal-project

## Next Steps

1. Figure out how to launch a Lagoon API instance next to this Drupal site so it can be developed and fully tested.
2. Add [`steveworley/lagoon-php-sdk`](https://github.com/steveworley/lagoon-php-sdk) package to allow Drupal/PHP code to talk to Lagoon.
3. Wire up Drupal user creation to Lagoon User Create API.
4. Wire up Drupal node creation to Lagoon Project Create API.
5. Provide a way for the Project node to update once the project and environment are ready.
6. Provide a link to the Lagoon UI once user and projects are created.
7. Allow users to register with GitHub.
