ICloud Photo - Media Sorter
==================================

[![CircleCI](https://circleci.com/gh/rusllonrails/icloud_media_sorter.svg?style=svg)](https://circleci.com/gh/rusllonrails/icloud_media_sorter)
[![Maintainability](https://api.codeclimate.com/v1/badges/c71e80e5edbd049dcfa5/maintainability)](https://codeclimate.com/github/rusllonrails/icloud_media_sorter/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/c71e80e5edbd049dcfa5/test_coverage)](https://codeclimate.com/github/rusllonrails/icloud_media_sorter/test_coverage)

Lightweight Ruby library for converting of your photo folders downloaded from ICloud Photo grouped by year to folders organized by year and month. https://www.icloud.com/photos/

## Dependencies

Ruby (2.6.4)

## Local Setup

Please make sure you have installed 'libexif' at first:

```
$ brew install libexif             # Homebrew
$ sudo apt-get install libexif-dev # APT
$ sudo yum install libexif-devel   # CentOS
```

Then:
```
gem install bundler:2.0.2
bundle
```

## Run Unit tests

```
bundle exec rspec .
```

## Run Rubocop check

```
bundle exec rubocop
```

## Debug with Guard

```
bundle exec guard
```
