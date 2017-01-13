lock '3.6.0'
set :rvm_ruby_version, RUBY_VERSION

set :application, 'browsec'

set :repo_url,  'git@github.com:edwardbako/browsec_test.git'

set :deploy_to, '/home/deploy/www/browsec_test'

set :puma_threads,    [2, 16]
# set :puma_workers,    2

set :normalize_asset_timestamps, false

# set :uploads_dirs,    %w(public/uploads)
# set :shared_children, (fetch(:shared_children) || []) + fetch(:uploads_dirs)

append :linked_files, 'config/database.yml', 'config/secrets.yml', 'config/cable.yml',
       'config/schedule.yml', 'public/robots.txt'

append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system', 'public/uploads'

set :keep_releases, 5
set :pty,  false

after 'deploy:published', 'puma:restart'
after 'deploy:published', 'seed'
