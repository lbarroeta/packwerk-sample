# frozen_string_literal: true

class Shared::DashboardsController < ApplicationController

  before_action :authenticate_user!

  layout 'dashboards'

  def index; end

end
