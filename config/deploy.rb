# config valid only for Capistrano 3.1
load 'lib/deploy/seed'
lock '3.4.1'

set :application, 'nodelogics'
set :repo_url, 'git@github.com:doobee46/nodelogics.git'

set :deploy_to, '/home/deploy/nodelogics'
set :keep_releases, 5

set :linked_files, %w{config/database.yml db/production.sqlite3}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

set(:symlinks, [
  {
    source: "nginx.conf",
    link: "/etc/nginx/sites-enabled/#{fetch(:full_app_name)}"
  }
])

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end
  after :publishing, 'deploy:restart'
  after :finishing, 'deploy:cleanup'
end

