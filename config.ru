# frozen_string_literal: true

require 'roda'

class App < Roda
  
  route do |r|
    # GET / request
    r.root do
      r.redirect "/health"
    end

    r.on 'health' do
      body = 'OK'
    end

  end
end

run App.freeze.app
