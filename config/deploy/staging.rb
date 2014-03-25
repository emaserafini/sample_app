# Set this variables for environment configuration
set :rails_env, 'staging'
set :user, 'web'
set :app_env, "#{fetch(:application)}_#{fetch(:rails_env)}"

server 'your.ip', user: "#{fetch(:user)}", roles: %w{web app db}
