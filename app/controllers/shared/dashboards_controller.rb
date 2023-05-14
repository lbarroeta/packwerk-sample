# frozen_string_literal: true

module Shared
  class DashboardsController < ApplicationController
    layout 'dashboards'

    before_action :require_login
  end
end
