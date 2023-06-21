# frozen_string_literal: true

module SuperParser
  module ResponseObjects
    class Employer < Base
      attributes :company_name, :role, :from_year, :from_month, :is_current, :description, :skills, :to_year
    end
  end
end
