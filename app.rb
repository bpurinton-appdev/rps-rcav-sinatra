require 'sinatra'
require 'better_errors'
require 'binding_of_caller'
require "sinatra/reloader" if settings.development?

# To open .html.erb files, need to register them
#   https://stackoverflow.com/questions/11741585/how-do-i-use-html-erb-as-a-file-extension-for-my-views-with-sinatra
Tilt.register Tilt::ERBTemplate, 'html.erb'

configure :development do
  # need this configure for better errors
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__
end

get '/' do
  "<h1>Hello world!</h1>"
end

get '/rock' do
  # can render directly
  # "<h2>We played rock!</h2>"

  # redirect_to is just redirect in sinatra
  # redirect("https://www.wikipedia.org")

  @comp_move = ["rock", "paper", "scissors"].sample
    
  if @comp_move == "rock"
    @outcome = "won"
  elsif @comp_move == "paper"
    @outcome =  "tied"
  elsif @comp_move == "scissors"
    @outcome = "lost"
  end

  # render method doesn't work, need specific erb method
  erb(:"game_templates/user_rock")
end
