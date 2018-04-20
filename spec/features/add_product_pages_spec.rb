require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'ADD a post'
    fill_in 'Name', :with => 'Home stuff'
    fill_in 'Image', :with => 'Home stuff'
    fill_in 'Description', :with => 'Home stuff'
    fill_in 'Githublink', :with => 'Home stuff'
    fill_in 'Livelink', :with => 'Home stuff'
    click_on 'Create Product'
    expect(page).to have_content 'Products'
  end

  it "gives error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
