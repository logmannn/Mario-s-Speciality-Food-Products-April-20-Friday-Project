require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'ADD a Product'
    fill_in 'Name', :with => 'Bob Jones'
    fill_in 'Image', :with => 'https://i.imgur.com/SuI4cPh.gif'
    fill_in 'Country_of_origin', :with => 'USA'
    fill_in 'Cost', :with => '3'
    click_on 'Create Product'
    expect(page).to have_content 'Products'
  end

  it "gives error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
