# frozen_string_literal: true

require_relative 'super_parser/version'
require_relative 'super_parser/client'
require_relative 'super_parser/response'

module SuperParser
  class Error < StandardError; end

  class << self
    attr_accessor :api_key
  end

  def self.configure
    yield self
  end
end
