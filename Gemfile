source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.8"

gem "rails",           "7.1.5.1"
gem 'image_processing', '1.14.0'
gem 'active_storage_validations', '2.0.2'
gem "bcrypt",          "3.1.20"
gem 'faker',           "3.5.1"
gem "will_paginate",                 "4.0.1"
gem 'will_paginate-bootstrap-style', "0.3.0"
gem "bootstrap-sass",  "3.4.1"
gem "sassc-rails",     "2.1.2"
gem "sprockets-rails", "3.4.2"
gem "importmap-rails", "1.1.5"
gem "turbo-rails",     "1.4.0"
gem "stimulus-rails",  "1.2.1"
gem "jbuilder",        "2.11.5"
gem "puma",            "6.6.0"
gem "bootsnap",        "1.16.0", require: false
gem "sqlite3",         "1.6.1"
gem "concurrent-ruby", "1.3.4"

group :development, :test do
  gem 'reline', '0.5.10'
  gem "debug",   "1.7.1", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console",         "4.2.0"
  gem "solargraph",          "0.53.4"
  gem "irb",                 "1.10.0"
  gem "repl_type_completor", "0.1.2"
end

group :test do
  gem "capybara",                 "3.38.0"
  gem "selenium-webdriver",       "4.8.3"
  gem "webdrivers",               "5.2.0"
  gem "rails-controller-testing", "1.0.5"
  gem "minitest",                 "5.18.0"
  gem "minitest-reporters",       "1.6.0"
  gem "guard",                    "2.18.0"
  gem "guard-minitest",           "2.4.6"
end

group :production do
  gem "pg", "1.3.5"
  gem "aws-sdk-s3", "1.183.0", require: false
end
