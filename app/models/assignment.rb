class Assignment
  include Mongoid::Document

  field :start_date, :type => Date
  field :end_date, :type => Date
  field :assignee
  field :assigned_to

  belongs_to :asset_type
  belongs_to :asset, foreign_key: 'invoice_number'

  validates_presence_of :start_date, :asset, :assignee, :assigned_to

  def assignee

  end

  def current?
    self.end_date.nil? || self.end_date >= Date.today
  end
end
