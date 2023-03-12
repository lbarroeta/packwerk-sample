module Shared
  class CountriesController < ApplicationController
    def states
      @states = CS.states(params[:country])
    end

    def cities
      @cities = CS.cities(params[:state], params[:country])
    end

    private

    def formatted_result(result)
      result.map { |key, value| { label: value, value: key } }
    end
  end
end