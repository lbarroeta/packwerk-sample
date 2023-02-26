# frozen_string_literal: true

class Shared::Table::IndexRowsComponent < Shared::Table::IndexComponent
  include Turbo::FramesHelper

  attr_accessor :data, :rows_partial, :headers_count, :klass

  def initialize(data:, rows_partial:, headers_count:)
    @data = data
    @rows_partial = rows_partial

    @headers_count = headers_count
    @klass = @data.klass.name.downcase
  end
end
