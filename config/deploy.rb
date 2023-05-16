
`ssh-add`
lock "~> 3.17.2"

set :application, "my_app_name"
set :repo_url, "git@github.com:Planify-Travel/main-app.git"
set :keep_releases, 3

append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'
append :linked_files,'config/database.yml', 'config/secrets.yml', 'config/application.yml'

set :linked_dirs, fetch(:linked_dirs, []) << '.bundle'
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml', 'config/application.yml')
set :passenger_restart_with_touch, true

before 'deploy:check:linked_files', 'config:push'
