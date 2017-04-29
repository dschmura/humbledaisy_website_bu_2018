server "138.197.79.7", user: 'deployer', roles: %w{app db web}
set :stage, :production
set :branch, :master
set :deploy_user, "deployer"
set :full_app_name, "humbledaisy_website"
set :deploy_to, "/home/#{fetch(:deploy_user)}/apps/#{fetch(:full_app_name)}"
set :branch, 'master'
set :rails_env, 'production'
set :puma_env, "production"
set :puma_conf, "#{shared_path}/config/puma.rb"