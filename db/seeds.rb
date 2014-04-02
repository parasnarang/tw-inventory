# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(ad_id: 'parasnar', name: 'Paras Narang', role: 'Admin')
laptop = AssetType.create(:properties => [:serial, :asset_id, :procurement_date, :ram, :mac_address, :os, :processor], :name => 'Laptop', image: 'macbook-pro-15_250x250.jpg')
keyboard = AssetType.create(:properties => [:serial, :asset_id, :procurement_date], :name => 'Keyboard', image: 'Keyboard_250x250.png')
mouse = AssetType.create(:properties => [:serial, :asset_id, :procurement_date], :name => 'Mouse', image: 'mouse_250x250.jpg')
monitor = AssetType.create(:properties => [:serial, :asset_id, :procurement_date], :name => 'Monitor', image: 'monitor_250x250.jpg')