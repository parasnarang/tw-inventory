class AssetType
  include Mongoid::Document
  include Mongoid::Timestamps
  field :properties, type: Array
  field :name, type: String

  validates_presence_of :properties
  validates_presence_of :name
end
