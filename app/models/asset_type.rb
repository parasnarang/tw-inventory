class AssetType
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name
  field :image

  validates_presence_of :name, :image

  has_many :assets
  has_many :models
  has_and_belongs_to_many :properties

  def unassigned_asset_count
    self.assets.select{|a| a.unassigned?}.count
  end

  def total_asset_count
    assets.count
  end
end
