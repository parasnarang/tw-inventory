class Asset
  include Mongoid::Document
  include Mongoid::Timestamps

  embedded_in :asset_type
  embeds_many :assignments

  def unassigned?
    self.assignments.blank? || self.assignments.select{|a| a.current?}.blank?
  end
end
