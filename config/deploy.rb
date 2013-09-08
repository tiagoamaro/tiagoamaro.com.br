set :application, 'website'
set :repository,  'ssh://git@bitbucket/tiagoamaro/personal_page_v2.git'
set :deploy_via, :remote_cache
set :scm, :git
set :branch, 'bootstrap'
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

god_file = 'server.god'
namespace :deploy do
  task :stop do
    run 'pkill ruby; true'
  end

  task :bundle do
    run "cd #{deploy_to}/current; bundle install"
  end

  task :generate_secret do
    new_secret = %x(rake secret)
    secret_file_content = "NewCurriculum::Application.config.secret_token = '#{new_secret}'"
    secret_file = "#{deploy_to}/current/config/initializers/secret_token.rb"
    put secret_file_content, secret_file
  end

  task :start do
    run "cd #{deploy_to}/current; rails s -d -e production; god -c #{god_file}"
  end
end

after 'deploy', 'deploy:stop', 'deploy:bundle', 'deploy:generate_secret', 'deploy:start'
