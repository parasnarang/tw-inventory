require 'spec_helper'

describe Asset do
  it { should be_embedded_in(:asset_type) }
  it { should be_embedded_in(:asset_type) }
  it { should embed_many(:assignments)}
end