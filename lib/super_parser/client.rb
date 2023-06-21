# frozen_string_literal: true

require 'faraday'
require_relative 'client_error'

module SuperParser # :nodoc:
  class Client
    def parse(file)
      uri = URI('https://api.superparser.com/parse')
      request = Net::HTTP::Post.new(uri)
      request['X-API-KEY'] = SuperParser.api_key
      request['accept'] = 'application/json'

      form_data = [['file_name', file]]

      request.set_form form_data, 'multipart/form-data'
      response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http|
        http.request(request)
      end

      if response.code != 200
        SuperParser::ClientError.new response
      else
        SuperParser::Response.new(response.body)
      end
    end
  end
end
