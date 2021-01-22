# config/deploy/production.rb

set :stage, :production

set :deploy_to, '/var/www/ghana_p'
set :rails_env, 'production'
set :branch, 'master'

server 'app03-prod.chandra.makandra.de', user: 'deploy-ghana_p', roles: %w(app web cron db) # first is primary
server 'app04-prod.chandra.makandra.de', user: 'deploy-ghana_p', roles: %w(app web)

