$:.unshift(File.expand_path('./lib', ENV['rvm_path'])) 
require "rvm/capistrano"

set :using_rvm, true
set :rvm_ruby_string, 'ruby-1.9.2-p180@geek404'

set :application, "geekbox.ru"

role :web, "geekbox.ru"                          # Your HTTP server, Apache/etc
set :user, 'advamedia' # пользователь удалённого сервера
set :use_sudo, false # не запускать команды под sudo

set :keep_releases, 1

set :app_dir, "/sites/advamedia.ru/#{application}/"

# Директория, куда будет делаться checkout из репозитория
set :deploy_to, "#{app_dir}deploy"

set :rails_env, "production"

# Настройки репозитория
set :scm, :git
set :repository, "git@github.com:AdvaMedia/GeekBoxTemp.git"
set :deploy_via, :remote_cache

after "deploy:setup" do
  run "mkdir -p #{deploy_to}/shared/pids && mkdir -p #{deploy_to}/shared/config && mkdir -p #{deploy_to}/shared/var"
end
    

namespace :unicorn do
  task :start do
    run "cd #{deploy_to}/current && unicorn_rails -c #{deploy_to}/current/config/unicorn.rb -D -E #{rails_env}"
  end
 
  task :stop do
    run "kill -9 `cat #{deploy_to}/shared/pids/unicorn.pid`"
  end
 
  task :restart do
    run "kill -HUP `cat #{deploy_to}/shared/pids/unicorn.pid`"
  end
end