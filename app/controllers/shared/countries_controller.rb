module Shared
  class CountriesController < ApplicationController
    def index
      binding.pry
      render json: CS.countries.to_json, status: :ok
    end

    def states
      CS.states(params[:country].to_sym)
    end

    def cities
      CS.states(params[:state].to_sym)
    end
  end
end