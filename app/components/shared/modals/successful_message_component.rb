# frozen_string_literal: true

module Shared
  module Modals
    class SuccessfulMessageComponent < ViewComponent::Base
      include Turbo::FramesHelper

      attr_accessor :status

      def initialize(status: 'success')
        super

        @status = status
      end

      def body_message
        status.eql?('success') ? 'Procesado con exito' : 'Algo ocurrio...'
      end

      def icon
        status.eql?('success') ? 'bi bi-check-circle' : 'bi bi-x-circle'
      end

      def icon_color
        status.eql?('success') ? 'green' : 'red'
      end
    end
  end
end
