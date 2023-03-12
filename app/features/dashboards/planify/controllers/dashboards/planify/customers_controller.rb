module Dashboards
  module Planify
    class CustomersController < Dashboards::Planify::DashboardsController
      before_action :customer, only: %i[show edit update destroy]

      def index
        @pagy, @customers = pagy(Customer.all, items: 50)
      end

      def show; end

      def new
        @customer = Customer.new
      end

      def create
        @customer = Customer.new(permitted_params)
        @customer.status = Customers::Status::ACTIVE

        if @customer.save
          redirect_to dashboards_planify_customers_path
        else
          render :new
        end
      end

      def update
        respond_to do |format|
          if @customer.update(permitted_params)
            format.turbo_stream
          else
            format.turbo_stream
          end
        end
      end

      private

      def permitted_params
        params.require(:customer).permit(
          :status,
          :customer_type,
          :identifier,
          :name,
          address_attributes: %i[
            id
            address
            city
            country
            latitude
            longitude
            state
            _destroy
          ],
          contact_attributes: %i[
            id
            email
            facebook
            instagram
            phone
            twitter
            whatsapp
          ],
          customer_users_attributes: [
            :id,
            :customer_id,
            {
              user_attributes: %i[
                email
                first_name
                last_name
                role
                status
              ]
            }
          ]
        )
      end

      def customer
        @customer ||= Customer.find(params[:id])
      end
    end
  end
end