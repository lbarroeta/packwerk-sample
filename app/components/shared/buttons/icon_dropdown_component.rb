# frozen_string_literal: true

class Shared::Buttons::IconDropdownComponent < ViewComponent::Base
  attr_accessor :options

  def initialize(options:)
    @options = options
  end
end
