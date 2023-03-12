# frozen_string_literal: true

class Shared::Select::MultipleComponent < ViewComponent::Base
  include Turbo::FramesHelper
  include FormHelper

  attr_accessor :options, :form_field

  def initialize(options:, form_field:)
    @options = options
    @form_field = form_field
  end
end
