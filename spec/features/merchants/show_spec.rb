require 'rails_helper'

RSpec.describe 'the merchants show page', type: :feature do
  describe 'the index page' do
    before(:each) do
      visit('/merchants/1')
    end

    it 'lists merchants items', :vcr do
      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Item Expedita Aliquam")
    end

    it 'links to each item by their name', :vcr do
      click_link("Item Nemo Facere")
      expect(current_path).to eq('/items/4')
    end
  end
end
