module Integrations
  module Mapbox
    class Geocoding
      attr_accessor :search_text

      def initialize(search_text:)
        @search_text = search_text
        ::Mapbox.access_token = ENV['MAPBOX_TOKEN']
      end

      def perform
        results = ::Mapbox::Geocoder.geocode_forward(search_text)
      end
    end
  end
end