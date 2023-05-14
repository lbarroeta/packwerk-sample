# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id               :bigint           not null, primary key
#  crypted_password :string
#  discarded_at     :datetime         indexed
#  email            :string
#  first_name       :string
#  last_name        :string
#  role             :string
#  salt             :string
#  status           :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_users_on_discarded_at  (discarded_at)
#
require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User Specs' do
    describe 'validations' do
      context 'presence' do
        it {
          should validate_presence_of(:first_name)
          should validate_presence_of(:last_name)
          should validate_presence_of(:email)
          should validate_presence_of(:role)
          should validate_presence_of(:status)
        }
      end

      context 'uniqueness' do
        it {
          should validate_uniqueness_of(:email)
        }
      end
    end
  end
end
