# run do |env|
#   [200, {}, ["Hello World"]]
# end

require 'bundler/setup'
require 'rack'

class Testapp

  def call(env)

    rack_request = Rack::Request.new(env)

    if env["REQUEST_METHOD"] == "POST"
      post_data = rack_request.POST
      pp post_data
      upload = rack_request.params["upload"]
      pp upload
      [201, {}, ["Post handled with upload file data size #{upload[:tempfile].size}"]]
    else
      [200, {}, ["Hello World"]]
    end
  end
end

run Testapp.new