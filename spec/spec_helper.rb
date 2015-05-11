ENV['RACK_ENV'] = 'test'

require('sinatra/activerecord')
require('rspec')
require('capybara/rspec')
require('pg')
require('employee')
require('division')
require('project')
require('pry')



RSpec.configure do |config|
  config.after(:each) do
    Employee.all.each do |employee|
      employee.destroy
    end
  end
end

RSpec.configure do |config|
  config.after(:each) do
    Division.all.each do |division|
      division.destroy
    end
  end
end

RSpec.configure do |config|
  config.after(:each) do
    Project.all.each do |project|
      project.destroy
    end
  end
end
