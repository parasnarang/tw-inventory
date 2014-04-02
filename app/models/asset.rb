class Asset
  include Mongoid::Document
  include Mongoid::Timestamps

  embedded_in :asset_type
  embeds_many :assignments

end
