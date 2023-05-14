# frozen_string_literal: true

module Dashboards
  module Planify
    class DashboardsController < ApplicationController
      layout 'dashboards'

      before_action :require_login, :set_current_attributes

      private

      def set_current_attributes
        Current.user = current_user
      end
    end
  end
end
