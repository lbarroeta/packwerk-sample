# frozen_string_literal: true

class Shared::Select::MultipleComponent < ViewComponent::Base
  include Turbo::FramesHelper

  attr_accessor :options

  def initialize(options: nil)
    @options = options
  end
end
