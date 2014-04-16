class User
  include Mongoid::Document
  include Mongoid::Timestamps

  ADMIN = "Admin"

  field :ad_id
  field :name
  field :role

  validates_presence_of :ad_id, :name, :role

  has_many :assignments

  def role_enum
    [['admin'],['employee']]
  end

  def self.admin?(ad_id)
    u = User.where(:ad_id => ad_id)
    if u.present? && u.last.role == ADMIN
      true
    else
      false
    end
  end
end
