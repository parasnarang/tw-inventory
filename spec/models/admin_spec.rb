require 'spec_helper'

describe Admin do
  before do
    #Factory.build(:admin)
  end

  it {should validate_presence_of(:name)}
  it {should validate_presence_of(:ad_id)}

end