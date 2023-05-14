# frozen_string_literal: true

module Dashboards
  module Planify
    module Users
      class Role < EnumerateIt::Base
        associate_values(
          :admin,
          :manager
        )
      end
    end
  end
end
