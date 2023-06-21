# frozen_string_literal: true

module SuperParser # :nodoc:
  class ClientError < StandardError
    attr_reader :code

    def initialize(response)
      error = JSON.parse response.body
      @code = response.code
      super(error['message'])
    end
  end
end
