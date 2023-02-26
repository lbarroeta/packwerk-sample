# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CustomerDecorator do
  let(:customer) { Customer.new.extend CustomerDecorator }
  subject { customer }
  it { should be_a Customer }
end
