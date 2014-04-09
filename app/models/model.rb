class Model
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String

  validates_presence_of :name

  belongs_to :company
  belongs_to :asset_type
end
