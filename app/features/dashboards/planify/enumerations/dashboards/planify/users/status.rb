# frozen_string_literal: true

module Dashboards
  module Planify
    module Users
      class Status < EnumerateIt::Base
        associate_values(
          :active,
          :blocked
        )
      end
    end
  end
end
