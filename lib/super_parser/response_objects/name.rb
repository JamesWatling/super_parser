# frozen_string_literal: true

module SuperParser
  module ResponseObjects
    class Name < Base
      attributes :first_name, :last_name, :full_name
    end
  end
end
