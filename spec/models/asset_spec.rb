require 'spec_helper'

describe Asset do
  it { should be_embedded_in(:asset_type) }
end