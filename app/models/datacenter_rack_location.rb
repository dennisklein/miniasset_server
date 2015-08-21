class DatacenterRackLocation < ActiveRecord::Base
  include RocketPants::Cacheable

  validates :floor, presence: true
  validates :row, presence: true
  validates :cell, presence: true

  belongs_to :rack, class_name: 'DatacenterRack', foreign_key: 'datacenter_rack_id'
  belongs_to :datacenter
end
