class Assignment
  include Mongoid::Document
  field :start_date,:type => Date
  field :end_date,:type => Date

  embedded_in :user
  embedded_in :asset

  validates_presence_of :user
  validates_presence_of :asset

  def current?
    self.end_date.nil? || self.end_date >= Date.today
  end
end
