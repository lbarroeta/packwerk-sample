module Admin
  module Planify
    module CustomerDecorator
      def self.index_dropdown
        [
          { title: I18n.t('create_client', scope: 'decorators.customer/index_dropdown'), url: '/admin/planify/customers/new'  }
        ]
      end

      def self.index_table_headers
        [
          { title: I18n.t('client', scope: 'decorators.customer/index_headers'), padding: 'ps-1'},
          { title: I18n.t('identifier', scope: 'decorators.customer/index_headers'), padding: 'ps-1'},
          { title: I18n.t('client_type', scope: 'decorators.customer/index_headers'), padding: 'ps-1'},
          { title: I18n.t('options', scope: 'decorators.customer/index_headers'), padding: 'ps-1'}
        ]
      end

      def self.table_dropdown(object)
        status = object.status.eql?('active') ? 'blocked' : 'active'

        [
          { title: I18n.t('see_details', scope: 'decorators.customer/table_dropdown'), url: "/admin/planify/customers/#{object.id}" },
          { title: I18n.t(status, scope: 'decorators.customer/table_dropdown'), url: "/admin/planify/customers/#{object.id}", method: 'destroy'.to_sym }
        ]
      end
    end
  end
end