# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Admin.create(ad_id: 'parasnar', name: 'Paras Narang')
Admin.create(ad_id: 'vishalsh', name: 'Vishal Sharma')
laptop = AssetType.create(:name => 'Laptop', image: 'macbook-pro-15_250x250.jpg')
keyboard = AssetType.create(:name => 'Keyboard', image: 'Keyboard_250x250.png')
mouse = AssetType.create(:name => 'Mouse', image: 'mouse_250x250.jpg')
monitor = AssetType.create(:name => 'Monitor', image: 'monitor_250x250.jpg')
networkDevices = AssetType.create(:name => 'Network Devices', image: 'router.jpg')
misc = AssetType.create(:name => 'Miscellaneous', image: 'wires.jpg')