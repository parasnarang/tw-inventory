class Asset
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :asset_type

end
