# frozen_string_literal: true

module SuperParser
  module ResponseObjects
    class Education < Base
      attributes :institute, :degree, :course, :from_year, :from_month, :to_year, :to_month
    end
  end
end
