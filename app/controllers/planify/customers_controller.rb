# frozen_string_literal: true

module Planify
  class CustomersController < Shared::DashboardsController
    def index
      @pagy, @customers = pagy(Customer.all, items: 50)
    end

    def create
      @customer = Customer.new(permitted_params)
      @customer.status = Customers::Status::ACTIVE

      if @customer.save

      else

      end
    end

    private

    def permitted_params
      params.require(:customer).permit(
        :customer_type,
        :identifier,
        :name,
        address_attributes: [
          :id,
          :address,
          :city,
          :country,
          :latitude,
          :longitude,
          :state,
          :_destroy
        ]
      )
    end
  end
end
