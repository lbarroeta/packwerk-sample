# frozen_string_literal: true

module Dashboards
  module Planify
    module Customers
      class Status < EnumerateIt::Base
        associate_values(
          :active,
          :blocked,
          :draft
        )
      end
    end
  end
end
