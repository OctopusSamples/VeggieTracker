ENV['SINATRA_ENV'] ||= 'development'
ENV['RACK_ENV'] ||= 'development'

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

#ActiveRecord::Base.establish_connection(
#  ENV['DATABASE_URL'] || { adapter: 'postgresql',
#                           database: "veggie_tracker",
#                           username: "postgres",
#                           password: "GrassGrows2!",
#                           host: "clusterpi-1",
#                           port: 5432}
#)

require 'dotenv'
Dotenv.load

require_all 'app'
