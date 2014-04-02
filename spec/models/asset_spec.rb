require 'spec_helper'

describe Asset do
  it {should belong_to(:asset_type)}
end