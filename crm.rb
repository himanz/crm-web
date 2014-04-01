require_relative 'contact'
require_relative 'rolodex'
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
	erb :new_contact
end

get '/contacts/:id' do
end

get '/contacts/:id/edit' do
end

post '/contacts' do
	new_contact = Contact.new(params[:first_name], params[:last_name], params[:email], params[:note])
	@@rolodex.add_contact(new_contact)
	redirect to('/contacts')
end