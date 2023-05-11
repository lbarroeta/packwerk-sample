module Dashboards
  module Planify
    class CustomersDecorator < SimpleDelegator
      def self.index_dropdown
        new_client_url = '/dashboards/planify/customers/new'

        [
          { title: I18n.t('create_client', scope: 'decorators.customer/index_dropdown'), url: new_client_url }
        ]
      end

      def self.index_table_headers
        [
          { title: I18n.t('client', scope: 'decorators.customer/index_headers'), padding: 'ps-1' },
          { title: I18n.t('identifier', scope: 'decorators.customer/index_headers'), padding: 'ps-1' },
          { title: I18n.t('client_type', scope: 'decorators.customer/index_headers'), padding: 'ps-1' },
          { title: I18n.t('options', scope: 'decorators.customer/index_headers'), padding: 'ps-1' }
        ]
      end

      def self.table_dropdown(object)
        status = object.status.eql?('active') ? 'blocked' : 'active'
        see_details_url = "/dashboards/planify/customers/#{object.id}"

        [
          { title: I18n.t('see_details', scope: 'decorators.customer/table_dropdown'), url: see_details_url },
          { title: I18n.t(status, scope: 'decorators.customer/table_dropdown'), url: "/dashboards/planify/customers/#{object.id}", method: 'destroy'.to_sym }
        ]
      end
    end
  end
end
