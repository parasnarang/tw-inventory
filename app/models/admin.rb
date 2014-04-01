class Admin
  include Mongoid::Document
  include Mongoid::Timestamps
  field :ad_id, type: String
  field :name, type: String

  validates_presence_of :ad_id
  validates_presence_of :name
end
