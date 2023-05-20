# frozen_string_literal: true

module Dashboards
  module Planify
    class CustomerAddressDecorator < SimpleDelegator
      def formatted_country
        CS.countries[country.to_sym]
      end

      def formatted_state
        selected_state = CS.states(country)
        selected_state[state.to_sym]
      end

      def formatted_city
        CS.cities(state, country).select { |c| c.eql? city }.first
      end
    end
  end
end
