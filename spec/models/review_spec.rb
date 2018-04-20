require 'rails_helper'

describe Review do
  it { should validate_presence_of :country_of_origin }
  it { should belong_to :product }
end
