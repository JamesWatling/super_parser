# frozen_string_literal: true

module SuperParser
  module ResponseObjects
    class Base
      class << self
        def inspect
          @data.to_s
        end

        def attributes(*attrs)
          attrs.each do |attr|
            define_method(attr) do
              @data[attr.to_s]
            rescue StandardError
              nil
            end
            instance_variable_set("@#{attr}", true)
          end
        end
      end

      def initialize(data)
        @data = data
      end

      def to_s
        @data.to_s
      end
    end
  end
end
