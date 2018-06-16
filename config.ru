require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require_relative './models/Animal.rb'
require_relative './controllers/animals_controller.rb'

# Middleware
use Rack::MethodOverride
use Rack::Reloader

run AnimalsController
