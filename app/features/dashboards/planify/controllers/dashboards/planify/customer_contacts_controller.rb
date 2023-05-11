# frozen_string_literal: true

module Dashboards
  module Planify
    class CustomerContactsController < Dashboards::Planify::DashboardsController
      before_action :customer
      before_action :customer_contact, only: %i[edit update]

      def create
        @customer_contact = CustomerContact.new(permitted_params)
        @customer_contact.customer_id = @customer.id

        respond_to do |format|
          if @customer_contact.save
            format.turbo_stream
          else
            format.turbo_stream
          end
        end
      end

      def update
        respond_to do |format|
          if @customer_contact.update(permitted_params)
            format.turbo_stream
          else
            format.turbo_stream
          end
        end
      end

      private

      def customer
        @customer ||= Customer.find(params[:customer_id])
      end

      def customer_contact
        @customer_contact ||= CustomerContact.find(params[:id])
      end

      def permitted_params
        params.require(:customer_contact).permit(:email, :facebook, :instagram, :phone, :twitter, :whatsapp)
      end
    end
  end
end
