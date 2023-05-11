# frozen_string_literal: true

module Dashboards
  module Planify
    module Shared
      module Forms
        class ErrorsComponent < ViewComponent::Base
          attr_accessor :errors

          def initialize(errors:)
            super

            @errors = errors
          end
        end
      end
    end
  end
end
