class Asset
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :asset_type
  has_many :assignments

  def unassigned?
    self.assignments.blank? || self.assignments.select{|a| a.current?}.blank?
  end

  def properties
    asset_type.properties
  end
end
