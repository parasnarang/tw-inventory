require 'spec_helper'

describe Model do
  it {should validate_presence_of(:name)}

  it {should belong_to(:company)}
  it {should belong_to(:asset_type)}
end