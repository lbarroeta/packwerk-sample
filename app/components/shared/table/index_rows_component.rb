# frozen_string_literal: true

class Shared::Table::IndexRowsComponent < Shared::Table::IndexComponent
  include Turbo::FramesHelper

  attr_accessor :data, :rows_partial, :headers_count, :klass

  def initialize(data:, rows_partial:)
    @data = data
    @rows_partial = rows_partial

    @headers_count = CustomerDecorator.index_table_headers.size
    @klass = @data.klass.name.downcase
  end
end
