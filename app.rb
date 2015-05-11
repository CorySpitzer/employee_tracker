require('sinatra')
require('sinatra/activerecord')
require('sinatra/reloader')
also_reload('lib/*.rb')
require('./lib/employee')
require('./lib/division')
require('./lib/project')
require('pg')
require('pry')

get('/') do
  @divisions = Division.all()
  erb(:index)
end

post('/') do
  Division.create(name: params.fetch("division_name"))
  @divisions = Division.all()
  erb(:index)
end

get('/division/:id') do
  @division = Division.find(params.fetch("id"))
  erb(:division)
end
