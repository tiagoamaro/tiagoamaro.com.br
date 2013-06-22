set :application, 'website'
set :repository,  'ssh://git@bitbucket/tiagoamaro/personal_page_v2.git'
set :deploy_via, :copy
set :scm, :git
set :branch, 'foundation'
set :deploy_to, '/root/curriculum_v2'
set :user, 'root'

role :web, 'tiagoamaro.com.br'                          # Your HTTP server, Apache/etc
role :app, 'tiagoamaro.com.br'                          # This may be the same as your `Web` server
# role :db,  'your primary db-server here', :primary => true # This is where Rails migrations will run
# role :db,  'your slave db-server here'

# if you want to clean up old releases on each deploy uncomment this:
# after 'deploy:restart', 'deploy:cleanup'

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run '#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}'
#   end
# end

namespace :deploy do
  task :stop do
    run 'pkill ruby; true'
  end

  task :bundle do
    run "cd #{deploy_to}/current; bundle install"
  end
  
  task :start do
    run "cd #{deploy_to}/current; rails s -d -e production"
  end
end

after 'deploy', 'deploy:stop' 
after 'deploy', 'deploy:bundle' 
after 'deploy', 'deploy:start' 