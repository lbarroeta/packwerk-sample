module Admin
  module Planify
    class DashboardsController < ApplicationController
      layout 'dashboards'

      before_action :require_login
    end
  end
end