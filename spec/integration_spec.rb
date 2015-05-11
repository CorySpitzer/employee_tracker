require('spec_helper')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('The app', :type => :feature) do
  describe('the root path') do
    it('visits the index') do
      visit('/')
      expect(page).to have_content('Track your employees!')
    end
  end

  describe('posting a new division') do
    it('posts a new division on the index page') do
      visit('/')
      fill_in('division_name', :with => 'ball pit')
      click_button('Submit!')
      expect(page).to have_content('ball pit')
    end
  end
end
