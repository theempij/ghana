# config/deploy/staging.rb

set :stage, :staging

set :deploy_to, '/var/www/ghana_s'
set :rails_env, 'staging'
set :branch, ENV['DEPLOY_BRANCH'] || 'master'

server 'app03-prod.chandra.makandra.de', user: 'deploy-ghana_s', roles: %w(app web cron db) # first is primary
server 'app04-prod.chandra.makandra.de', user: 'deploy-ghana_s', roles: %w(app web)

