class Property
  include Mongoid::Document

  field :name

  validates_presence_of :name

  has_and_belongs_to_many :asset_type

end
