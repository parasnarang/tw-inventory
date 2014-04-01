# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(ad_id: 'parasnar', name: 'Paras Narang', role: 'Admin')
laptop = AssetType.create(:properties => [:serial, :asset_id, :procurement_id, :ram, :mac_address, :os, :processor], :name => 'Laptop')