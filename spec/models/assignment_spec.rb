require 'spec_helper'

describe Assignment do
  it {should be_embedded_in(:user)}
  it {should be_embedded_in(:asset)}
end