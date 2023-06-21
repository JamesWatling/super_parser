# frozen_string_literal: true

module SuperParser
  module ResponseObjects
    class Address < Base
      attributes :city, :country_code
    end
  end
end
