# frozen_string_literal: true

module Shared
  module Table
    class IndexRowsComponent < ViewComponent::Base
      include Turbo::FramesHelper

      attr_accessor :data, :rows_partial, :headers_count, :klass

      def initialize(data:, rows_partial:, headers_count:)
        super

        @data = data
        @rows_partial = rows_partial

        @headers_count = headers_count
        @klass = @data.klass.name.downcase
      end
    end
  end
end
