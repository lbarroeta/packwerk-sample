# frozen_string_literal: true

require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/scm/git'
install_plugin Capistrano::SCM::Git

require 'capistrano/passenger'
require 'capistrano/postgresql'
require 'capistrano/rails'
require 'capistrano/rails/console'
require 'capistrano/rbenv'
require 'capistrano/upload-config'

set :rbenv_type, :user
set :rbenv_ruby, '3.1.3'
set :pty, false

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
