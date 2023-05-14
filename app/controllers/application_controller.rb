# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pagy::Backend
  include Pundit::Authorization

  append_view_path(Rails.root.glob('app/admin/*/views'))
  append_view_path(Rails.root.glob('app/features/dashboards/*/views'))
end
