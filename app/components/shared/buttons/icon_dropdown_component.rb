# frozen_string_literal: true

module Shared
  module Buttons
    class IconDropdownComponent < ViewComponent::Base
      attr_accessor :options

      def initialize(options:)
        super

        @options = options
      end
    end
  end
end
