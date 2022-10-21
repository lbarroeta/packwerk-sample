# frozen_string_literal: true

Rails.logger.info '===== Running seeds'
FactoryBot.create(:user, email: 'leonardo.barroeta@kodim.tech', password: 'password')
Rails.logger.info '===== Finished seeds'
