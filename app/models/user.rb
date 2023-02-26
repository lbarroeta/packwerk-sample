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
class User < ApplicationRecord
  authenticates_with_sorcery!

  include Discard::Model

  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :role, presence: true
  validates :status, presence: true
end
