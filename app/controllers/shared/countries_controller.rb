# frozen_string_literal: true

module Shared
  class CountriesController < ApplicationController
    def states
      @states = CS.states(params[:country])
      render json: { states: @states.to_json }, status: :ok
    end

    def cities
      @cities = CS.cities(params[:state], params[:country])
      render json: { states: @cities.to_json }, status: :ok
    end

    private

    def formatted_result(result)
      result.map { |key, value| { label: value, value: key } }
    end
  end
end
