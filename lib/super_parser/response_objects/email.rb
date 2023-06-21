# frozen_string_literal: true

module SuperParser
  module ResponseObjects
    class Email < Base
      attributes :email

      def to_s
        @data['email']
      end
    end
  end
end
