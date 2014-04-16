class Property
  include Mongoid::Document

  field :name

  has_and_belongs_to_many :asset_type

end
