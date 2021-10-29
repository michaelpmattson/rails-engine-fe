require 'rails_helper'

RSpec.describe 'the merchants index', type: :feature do
  describe 'the index page' do
    before(:each) do
      visit('/merchants')
    end

    it 'has a list of merchants' do

    end

    xit 'links to each merchant by their name' do
    end
  end
end


# I should see a list of merchants by name
# and when I click the merchant's name
# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.
