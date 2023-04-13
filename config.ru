require_relative 'app'
run Sinatra::Application

# if settings.development?
#   map '/git' do
#     run WebGit::Server
#   end
# end

# map '/' do
#   run Sinatra::Application
# end
