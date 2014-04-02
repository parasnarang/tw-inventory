class AssetType
  include Mongoid::Document
  include Mongoid::Timestamps
  field :properties, :type => Array
  field :name, :type => String
  field :image, :type => String

  validates_presence_of :properties
  validates_presence_of :name

  embeds_many :assets

  def unassigned_asset_count
    self.assets.select{|a| a.unassigned?}.count
  end

  def total_asset_count
    assets.count
  end
end
