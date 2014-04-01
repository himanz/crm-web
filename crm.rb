require_relative 'contact'
require_relative 'contact'
require 'sinatra'

@@rolodex = Rolodex.new

#routes
get '/' do
	@crm_app_name = "MY CRM"
	erb :index
end

get '/contacts' do
	erb :contacts
end

get '/contacts/new' do
end

get '/contacts/:id' do
end

get '/contacts/:id/edit' do
end
