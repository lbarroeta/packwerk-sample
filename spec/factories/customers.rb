# frozen_string_literal: true

# == Schema Information
#
# Table name: customers
#
#  id            :bigint           not null, primary key
#  customer_type :string           indexed
#  identifier    :string           indexed
#  name          :string           indexed
#  status        :string           indexed
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_customers_on_customer_type  (customer_type)
#  index_customers_on_identifier     (identifier)
#  index_customers_on_name           (name) UNIQUE
#  index_customers_on_status         (status)
#
FactoryBot.define do
  factory :customer do
    customer_type { Dashboards::Planify::Customers::Type::TOUR_GUIDE }
    identifier { Faker::Company.duns_number }
    name { Faker::Company.name }
    status { Dashboards::Planify::Customers::Status::ACTIVE }
  end
end
