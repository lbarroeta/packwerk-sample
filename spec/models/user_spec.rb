# == Schema Information
#
# Table name: users
#
#  id               :bigint           not null, primary key
#  first_name       :string           default(""), not null
#  last_name        :string           default(""), not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  email            :string           default(""), not null
#  discarded_at     :datetime
#  crypted_password :string
#  salt             :string
#
require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
