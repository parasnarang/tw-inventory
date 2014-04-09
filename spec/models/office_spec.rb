require 'spec_helper'

describe Office do
  it {should belong_to(:country)}
  it {should validate_presence_of(:name)}
  it {should validate_presence_of(:country)}
end