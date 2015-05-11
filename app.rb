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
