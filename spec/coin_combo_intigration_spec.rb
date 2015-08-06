require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the coin_combo path', {:type => :feature}) do
  it('processes user entry and returns number of coins') do
    visit('/')
    fill_in('amount', :with => '166')
    click_button('Calculate')
    expect(page).to have_content('6 Quarters, 1 Dimes, 1 Nickels, and 1 Pennies')
  end
end
