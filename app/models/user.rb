# frozen_string_literal: true

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
class User < ApplicationRecord
  authenticates_with_sorcery!

  include Discard::Model

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
end
