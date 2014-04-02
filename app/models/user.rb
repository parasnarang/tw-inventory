class User
  include Mongoid::Document
  include Mongoid::Timestamps

  ADMIN = "Admin"

  field :ad_id, type: String
  field :name, type: String
  field :role, type: String

  validates_presence_of :ad_id
  validates_presence_of :name

  embeds_many :assignments

  def self.admin?(ad_id)
    u = User.where(:ad_id => ad_id)
    if u.present? && u.last.role == ADMIN
      true
    else
      false
    end
  end
end
