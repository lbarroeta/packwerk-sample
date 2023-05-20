# frozen_string_literal: true

server '165.22.3.246', user: 'deploy', roles: %w[app db web], primary: true

set :branch, 'staging'
set :deploy_to, '/var/www/staging'
