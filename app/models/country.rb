class Country
  include Mongoid::Document

  field :name, type: String

  validates :name, :presence => true

  has_many :offices
end
