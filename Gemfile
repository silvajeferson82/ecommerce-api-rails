source "https://rubygems.org"

gem "rails", "~> 7.2.2", ">= 7.2.2.1"

# Basic
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false

# Authentication
gem "devise_token_auth", "~> 1.2.3"

group :development, :test do  
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  gem "brakeman", require: false

  gem "rubocop-rails-omakase", require: false
end


