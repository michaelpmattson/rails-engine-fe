require 'rails_helper'

RSpec.describe 'the merchants index', type: :feature do
  describe 'the index page' do
    before(:each) do
      visit('/merchants')
    end

    it 'has a list of merchants', :vcr do
      expect(page).to have_link("Schroeder-Jerde")
    end

    xit 'links to each merchant by their name' do
      click_link("Schroeder-Jerde")
      expect(current_path).to eq('/merchants/1')
    end
  end
end


# I should see a list of merchants by name
# and when I click the merchant's name
# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.
