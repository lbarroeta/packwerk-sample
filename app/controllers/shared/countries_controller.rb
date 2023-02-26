module Shared
  class CountriesController < ApplicationController
    def index
      countries = CS.countries.map { |key, value| { label: value, value: key } }
      render json: countries.to_json, status: :ok
    end

    def states
      states = CS.states(params[:country].to_sym).map { |key, value| { label: value, value: key } }
      render json: states.to_json, status: :ok
    end

    def cities
      CS.states(params[:state].to_sym)
    end
  end
end