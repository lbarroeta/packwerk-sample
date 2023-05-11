# frozen_string_literal: true

module Shared
  module Select
    class MultipleComponent < ViewComponent::Base
      include Turbo::FramesHelper
      include FormHelper

      attr_accessor :options, :form_field

      def initialize(options:, form_field:)
        super

        @options = options
        @form_field = form_field
      end
    end
  end
end
