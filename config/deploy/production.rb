server '95.85.50.20', port: 2202, user: 'deploy', roles: %w{app web db}

set :stage, :production
set :rails_env, :production

set :branch, :master
