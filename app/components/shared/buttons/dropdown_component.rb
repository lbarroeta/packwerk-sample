# frozen_string_literal: true

class Shared::Buttons::DropdownComponent < ViewComponent::Base
  attr_accessor :options

  def initialize(options:)
    super

    @options = options
  end
end
