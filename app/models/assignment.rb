class Assignment
  include Mongoid::Document

  field :start_date,:type => Date
  field :end_date,:type => Date
  field :category, :type => String
  field :assignee_id, :type => String

  belongs_to :assignee, :class_name => 'User'
  belongs_to :asset
  belongs_to :user

  validates_presence_of :assignee_id
  validates_presence_of :start_date
  validates_presence_of :asset

  def current?
    self.end_date.nil? || self.end_date >= Date.today
  end
end
