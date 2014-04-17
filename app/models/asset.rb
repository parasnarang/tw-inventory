class Asset
  include Mongoid::Document
  include Mongoid::Timestamps

  field :invoice_number
  field :serial_number
  field :purchased_date, type: Date

  belongs_to :asset_type
  belongs_to :company
  belongs_to :model
  belongs_to :office

  validates_presence_of :invoice_number, :serial_number, :purchased_date, :asset_type, :company, :model, :office

  def unassigned?
    self.assignments.blank? || self.assignments.select{|a| a.current?}.blank?
  end

  def properties
    asset_type.properties
  end
end
