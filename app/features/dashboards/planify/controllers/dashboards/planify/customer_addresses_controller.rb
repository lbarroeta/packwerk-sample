# frozen_string_literal: true

module Dashboards
  module Planify
    class CustomerAddressesController < Dashboards::Planify::DashboardsController
      before_action :customer

      def new
        @customer_address = CustomerAddress.new
      end

      def create
        @customer_address = CustomerAddress.new(permitted_params)
        @customer_address.customer_id = @customer.id

        if @customer_address.save
          redirect_to new_admin_planify_customer_customer_contact_path(customer_id: @customer.id)
        else
          render :new
        end
      end

      private

      def customer
        @customer ||= Customer.find(params[:customer_id])
      end

      def permitted_params
        params.require(:customer_address).permit(:address, :city, :country, :state)
      end
    end
  end
end
