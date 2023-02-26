# frozen_string_literal: true

Rails.logger.info '===== Running seeds'

User.create!(
  first_name: 'Leonardo',
  last_name: 'Barroeta',
  email: 'leonardo.barroeta@kodim.tech',
  password: 'password',
  role: Users::Role::ADMIN,
  status: Users::Status::ACTIVE
)

Rails.logger.info '===== Finished seeds'
