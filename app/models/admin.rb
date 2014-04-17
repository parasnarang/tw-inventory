class Admin
  include Mongoid::Document
  include Mongoid::Timestamps

  ADMIN = "Admin"

  field :ad_id
  field :name

  validates_presence_of :ad_id, :name

  def self.admin?(ad_id)
    admin = Admin.find_by(ad_id: ad_id)
    if admin.present?
      true
    else
      false
    end
  end
end
