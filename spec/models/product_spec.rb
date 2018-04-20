require 'rails_helper'

describe Product do
  it { should validate_presence_of :name }
  it { should validate_presence_of :image }
  it { should validate_presence_of :countryoforigin }
  it { should have_many :reviews }
end
