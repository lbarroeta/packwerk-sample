# == Schema Information
#
# Table name: customer_users
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  customer_id :bigint           indexed => [user_id]
#  user_id     :bigint           indexed => [customer_id]
#
# Indexes
#
#  index_customer_users_on_customer_id_and_user_id  (customer_id,user_id) UNIQUE
#
require 'rails_helper'

RSpec.describe CustomerUser, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
