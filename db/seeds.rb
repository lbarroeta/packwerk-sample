# frozen_string_literal: true

Rails.logger.info '===== Running seeds'
FactoryBot.create(:user, email: 'lbarroeta@kodim.tech', password: 'password')
Rails.logger.info '===== Finished seeds'
