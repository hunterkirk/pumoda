# frozen_string_literal: true

# cat config.ru
require 'roda'

# App Class
class App < Roda
  plugin :all_verbs
  route do |r|
    # GET / request
    r.root do
      r.redirect '/entrypoint'
    end

    # /entrypoint branch
    r.on 'entrypoint' do
      # Set variable for all routes
      @greeting = 'Welcome'
    end

    r.on 'health' do
      body = 'OK'
    end

    r.delete do
      # Handle DELETE
    end
    r.put do
      # Handle PUT
    end
    r.patch do
      # Handle PATCH
    end
  end
end

# set :show_exceptions, false

# post '/message' do
#   content_type :json
#   body = JSON.parse request.body.read
#   JSON.dump({"message": "Hello #{body['name']}"})
# end

# get '/health' do
#   body = 'OK'
# end

# for all errors -> return a JSON error message
# error do
#   content_type :json
#   JSON.dump({'message': env['sinatra.error'].message})
# end

run App.freeze.app
