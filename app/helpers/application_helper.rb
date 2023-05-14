# frozen_string_literal: true

module ApplicationHelper
  def default_value(object)
    'N/D' if object.nil?
  end
end
