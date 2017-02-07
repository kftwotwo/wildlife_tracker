require 'rails_helper'

describe "the add a wildlife process" do
  it "adds a new wildlife" do
    visit wildlives_path
    click_link 'New Wildlife'
    fill_in 'Name', :with => 'Home stuff'
    click_on 'Create Wildlife'
    expect(page).to have_content 'Wildlife'
  end

  it "gives error when no name is entered" do
    visit new_wildlife_path
    click_on 'Create Wildlife'
    expect(page).to have_content 'errors'
  end
end
