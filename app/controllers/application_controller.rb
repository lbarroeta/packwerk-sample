# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pagy::Backend
  include Pundit::Authorization

  append_view_path(Dir.glob(Rails.root.join('app/admin/*/views')))
end
