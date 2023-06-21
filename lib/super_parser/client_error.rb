# frozen_string_literal: true

module SuperParser # :nodoc:
  class ClientError < StandardError
    attr_reader :status

    def initialize(response)
      error = JSON.parse response.body
      @status = response.status
      super(error['message'])
    end
  end
end
