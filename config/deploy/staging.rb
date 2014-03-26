# Set this variables for environment configuration
set :rails_env, 'staging'
set :user, 'web'
set :app_env, "#{fetch(:application)}_#{fetch(:rails_env)}"

# Puma configuration
set :puma_config,  -> { "#{shared_path}/config/puma.rb" }
set :puma_pid,     -> { "#{current_path}/tmp/puma.pid" }
set :puma_sock,    -> { "#{current_path}/tmp/puma.sock" }
set :puma_state,   -> { "#{shared_path}/tmp/puma.state" }
set :puma_log,     -> { "#{shared_path}/log/puma.log" }
set :puma_workers, 0
set :puma_threads, '0, 16'

server 'ENTER.YOUR.SERVER.IP', user: "#{fetch(:user)}", roles: %w{web app db}
