require 'rails_helper'

describe "the edit a sighting process" do
  it "edits a sighting" do
    wildlife = Wildlife.create(:name => 'Capybara')
    sighting = Sighting.create(:date => '10/09/1992', :latitude => '45.5231', :longitude => '122.6765', :region => 'Region 1', :wildlife_id => wildlife.id)
    visit wildlife_path(wildlife)
    click_on 'Edit Sighting'
    fill_in 'sighting[date]', :with => '10/10/1992'
    click_on 'Update Sighting'
    expect(page).to have_content '10/10/1992'
  end

  it "gives error when no name is entered" do
    wildlife = Wildlife.create(:name => 'Capybara')
    sighting = Sighting.create(:date => '10/09/1992', :latitude => '45.5231', :longitude => '122.6765', :region => 'Region 1', :wildlife_id => wildlife.id)
    visit wildlife_path(wildlife)
    click_on 'Edit Sighting'
    fill_in 'sighting[date]', :with => ''
    click_button 'Update Sighting'
    expect(page).to have_content 'errors'
  end
end
