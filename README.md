# Sharp Stone Toolkit

#### Gemfile ####

Contains the standard gemsets used at Sharp Stone, updated when new and cool things are discovered.

#### Mixins ####

    config/initializers/app/mixins.rb

#### Settings::ReleaseInfo ####

Uses the SettingsLogic gem to maintain release info. There are other gems to manage the release, but this way it's all using the same service which gets used for many other things.

    config/initializers/settings/release_info.yml
    app/models/settings/release_info.rb



