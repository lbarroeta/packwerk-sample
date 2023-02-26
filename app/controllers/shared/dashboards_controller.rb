# frozen_string_literal: true

class Shared::DashboardsController < ApplicationController
  layout 'dashboards'

  before_action :require_login
end
