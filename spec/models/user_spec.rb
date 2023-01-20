# == Schema Information
#
# Table name: users
#
#  id               :bigint           not null, primary key
#  first_name       :string
#  last_name        :string
#  email            :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  discarded_at     :datetime
#  crypted_password :string
#  salt             :string
#
require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User Specs' do
    context 'validations' do
      context 'presence' do
        it {
          should validate_presence_of(:first_name)
          should validate_presence_of(:last_name)
          should validate_presence_of(:email)
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
