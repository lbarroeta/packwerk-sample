# frozen_string_literal: true

module Dashboards
  module Planify
    module Customers
      class Type < EnumerateIt::Base
        associate_values(
          :tour_guide
        )
      end
    end
  end
end
