source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.3'

gem 'sinatra'
gem 'sinatra-contrib'

# Use Puma as the app server
gem 'puma', '~> 4.1'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rufo'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :development, :test do
  # not sure how to actually get the /git page open
  # gem 'web_git', github: 'firstdraft/web_git', branch: 'spring2020'
  gem 'grade_runner', github: 'firstdraft/grade_runner'
  gem 'pry'
  gem 'sqlite3', '~> 1.4.1'
end

group :test do
  gem 'capybara'
  gem 'rspec'
  gem 'rspec-html-matchers'
  gem 'webmock'
  gem 'i18n'
  # gem 'rack-test' # required?
end
