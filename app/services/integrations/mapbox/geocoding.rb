# frozen_string_literal: true

module Integrations
  module Mapbox
    class Geocoding
      attr_accessor :search_text

      def initialize(search_text:)
        @search_text = search_text
        ::Mapbox.access_token = ENV.fetch('MAPBOX_TOKEN', nil)
      end

      def perform
        ::Mapbox::Geocoder.geocode_forward(search_text)
      end
    end
  end
end
