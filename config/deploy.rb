# config valid only for Capistrano 3.1
lock '3.1.0'

set :application, 'sample_app'
set :repo_url, 'git@github.com:emaserafini/sample_app.git'

# Default branch is :master
ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

# Default deploy_to directory is /var/www/my_app
set :deploy_to, '/var/apps/sample_app'

# Default value for :scm is :git
set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :info

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, %w{config/database.yml}

# Default value for linked_dirs is []
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}
set :linked_dirs, %w{log tmp}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do

  # uncomment this line for zero downtime deploy
  # run after first deploy and "cap staging nginx:setup" and "cap staging puma:setup"
  # after :deploy, "puma:hot_restart"

end
