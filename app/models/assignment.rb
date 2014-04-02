class Assignment
  include Mongoid::Document

  embedded_in :user
  embedded_in :asset

end
