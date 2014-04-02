FactoryGirl.define do

  factory :user do
    ad_id "parasnar"
    name "Paras Narang"
  end

  factory :asset_type do
    properties [:asset_id, :serial]
    name "Keyboard"
  end

  factory :asset do
  end

end