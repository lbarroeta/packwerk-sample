module Admin
  module Shared
    class MapboxController < ApplicationController
      before_action :set_key

      def geocoding
        results = ::Mapbox::Geocoder.geocode_forward(params[:search_text], { type: 'addresses' })

        if results[0]['features'].present?
          render json: results[0]['features'].to_json, status: :ok
        else
          render json: [], status: :ok
        end
      end

      private

      def set_key
        ::Mapbox.access_token = ENV['MAPBOX_ACCESS_TOKEN']
      end
    end
  end
end
