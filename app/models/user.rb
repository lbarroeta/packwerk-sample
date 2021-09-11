# frozen_string_literal: true

class User < ApplicationRecord
  include Discard::Model

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :trackable, :timeoutable
end
