class Company
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name

  validates_presence_of :name

  has_many :models
end
