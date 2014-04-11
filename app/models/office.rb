class Office
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, :type => String
  field :country, :type => String

  #belongs_to :country

  validates_presence_of :name
  validates_presence_of :country
end
