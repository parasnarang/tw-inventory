class Asset
  include Mongoid::Document
  include Mongoid::Timestamps

  field :invoice_number
  field :serial_number
  field :purchased_date, type: Date
  field :mac_address
  field :warranty

  belongs_to :asset_type
  belongs_to :company
  belongs_to :model
  belongs_to :office

  rails_admin do
    object_label_method do
      :serial_number
    end
  end

  def warranty_enum
    [['1 year'], ['2 year'], ['3 year']]
  end

  validates_presence_of :invoice_number, :serial_number, :purchased_date, :mac_address, :warranty, :asset_type, :company, :model, :office
  validates_uniqueness_of :serial_number

  def unassigned?
    self.assignments.blank? || self.assignments.select{|a| a.current?}.blank?
  end

  def properties
    asset_type.properties
  end
end
