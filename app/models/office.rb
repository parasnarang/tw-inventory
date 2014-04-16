class Office
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name
  field :country

  #belongs_to :country

  validates_presence_of :name
  validates_presence_of :country
end
