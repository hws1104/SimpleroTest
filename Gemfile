# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

group :production, :staging, :development, :test do
  # to optimize and cache expensive computations
  # Read more: https://github.com/Shopify/bootsnap
  gem 'bootsnap', '~> 1.13', require: true

  # Client Side Validations
  # Read more: https://github.com/DavyJonesLocker/client_side_validations
  gem 'client_side_validations', '~> 20.0', '>= 20.0.2'

  # Bundle and process CSS [https://github.com/rails/cssbundling-rails]
  gem 'cssbundling-rails', '~> 1.1'

  # Flexible authentication solution for Rails with Warden
  # Read more: https://github.com/heartcombo/devise
  gem 'devise', '~> 4.8', '>= 4.8.1'

  # Allows marking ActiveRecord objects as discarded,
  # and provides scopes for filtering.
  # Read more: https://rubygems.org/gems/discard
  gem 'discard', '~> 1.2'

  # human-friendly strings as if they were numeric ids for ActiveRecord
  # Read more: http://norman.github.io/friendly_id/file.Guide.html
  gem 'friendly_id', '~> 5.4', '>= 5.4.2'

  # Use Active Storage variant
  # Read more: https://github.com/janko/image_processing
  # gem 'image_processing', '~> 1.12'

  # Build JSON APIs with ease [https://github.com/rails/jbuilder]
  gem 'jbuilder', '~> 2.11', '>= 2.11.5'

  # Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
  gem 'jsbundling-rails', '~> 1.0', '>= 1.0.3'

  # Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
  # gem "kredis"

  # Use postgresql as the database for Active Record
  # Read more: http://deveiate.org/code/pg/
  gem 'pg', '~> 1.4', '>= 1.4.3'

  # Use Puma as the app server
  # Read more: http://puma.io/
  gem 'puma', '~> 5.6', '>= 5.6.5'

  # Ruby on Rails is a full-stack web framework optimized for programmer
  # happiness and sustainable productivity. It encourages beautiful code by
  # favoring convention over configuration.
  # Read more: http://rubyonrails.org/
  # Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
  gem 'rails', '~> 7.0.3', '>= 7.0.3.1'

  # Use Redis adapter to run Action Cable in production
  gem 'redis', '~> 5.0', '>= 5.0.1'

  # ruby-vips is a binding for the libvips image processing library
  # Read more: https://github.com/libvips/ruby-vips
  # gem 'ruby-vips', '~> 2.1', '>= 2.1.4'

  # Use Sass to process CSS
  # gem "sassc-rails"

  # Simple, efficient background processing for Ruby
  # Read more: http://sidekiq.org/
  gem 'sidekiq', '~> 6.5'

  # The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
  gem 'sprockets-rails', '~> 3.4', '>= 3.4.2'

  # Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
  gem 'stimulus-rails', '~> 1.1'

  # Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
  gem 'turbo-rails', '~> 1.1'

  # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
  gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

  # A framework for creating reusable, testable & encapsulated view components, built to integrate seamlessly with Ruby on Rails.
  # Read more: https://viewcomponent.org/
  gem 'view_component', '~> 2.70'

  # Ruby C bindings to the excellent Yajl JSON stream-based parser library.
  # Read more: http://github.com/brianmario/yajl-ruby
  gem 'yajl-ruby', '~> 1.4'
end

group :development, :test do
  # help to kill N+1 queries and unused eager loading
  # Read more: https://github.com/flyerhzm/bullet
  gem 'bullet', '~> 7.0'

  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mingw x64_mingw]

  # factory_bot_rails provides integration between factory_bot
  # Read more: https://github.com/thoughtbot/factory_bot_rails
  gem 'factory_bot_rails', '~> 6.2'

  # easily generate fake data: names, addresses, phone numbers, etc.
  # Read more: https://github.com/stympy/faker
  gem 'faker', '~> 2.22'
end

group :development do
  # Annotate Rails classes with schema and routes info
  # Read more: https://github.com/ctran/annotate_models
  gem 'annotate', '~> 3.2'

  # Better HTML for Rails. Provides sane html helpers that make it easier to do the right thing.
  # Read more: https://github.com/Shopify/better-html
  gem 'better_html', '~> 1.0', '>= 1.0.16'

  # Brakeman detects security vulnerabilities in Ruby on Rails applications
  # via static analysis.
  # Read more: https://brakemanscanner.org/
  gem 'brakeman', '~> 5.3', require: false

  # ERB Linter tool.
  # Read more: https://github.com/Shopify/erb-lint
  gem 'erb_lint', '~> 0.1.3', require: false

  # Preview mail in the browser instead of sending
  # Read more: http://www.rubydoc.info/gems/letter_opener
  gem 'letter_opener', '~> 1.8'

  # Access an interactive console on exception pages or by calling 'console'
  # anywhere in the code.
  # Read more:
  gem 'web-console', '~> 4.1'

  # prettier plugin for the Ruby programming language
  # Read more: https://github.com/prettier/plugin-ruby#readme
  gem 'prettier', '~> 3.2'

  # Pronto runs analysis quickly by checking only the relevant changes
  # Read more: https://github.com/prontolabs/pronto
  gem 'pronto', '~> 0.11.0'
  gem 'pronto-brakeman', '~> 0.11.0', require: false
  gem 'pronto-erb_lint', github: 'tleish/pronto-erb_lint', require: false
  gem 'pronto-rails_best_practices', '~> 0.11.0', require: false
  gem 'pronto-reek', '~> 0.11.0', require: false
  gem 'pronto-rubocop', '~> 0.11.2', require: false
  gem 'pronto-stylelint', '~> 0.10.2', require: false

  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 3.0'

  # rails_best_practices is a code metric tool to check the quality of Rails code
  # Read more: http://rdoc.rails-bestpractices.com/
  gem 'rails_best_practices', '~> 1.23', require: false

  # Generate and install a favicon for all platforms with RealFaviconGenerator.
  # Read more: https://github.com/RealFaviconGenerator/rails_real_favicon
  gem 'rails_real_favicon', '~> 0.1.1', require: false

  # Tool that examines Ruby classes, modules and methods
  # Read more: http://www.rubydoc.info/gems/reek
  gem 'reek', '~> 6.1', require: false

  # rspec-rails is a testing framework for Rails
  # Read more: https://github.com/rspec/rspec-rails
  gem 'rspec-rails', '~> 5.1'

  # Automatic Ruby code style checking tool
  # Read more: https://docs.rubocop.org/
  gem 'rubocop', '~> 1.35', require: false
  gem 'rubocop-performance', '~> 1.14', require: false
  gem 'rubocop-rails', '~> 2.15'
  gem 'rubocop-rspec', '~> 2.12', require: false

  # Shoulda Matchers provides RSpec- and Minitest-compatible
  # one-liners to test common Rails functionality that
  # Read more: https://github.com/thoughtbot/shoulda-matchers
  gem 'shoulda-matchers', '~> 5.1'

  # Catch unsafe migrations at dev time
  # Read more: http://www.rubydoc.info/gems/strong_migrations/
  gem 'strong_migrations', github: 'ankane/strong_migrations'
end
