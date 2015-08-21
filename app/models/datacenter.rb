class Datacenter < ActiveRecord::Base
  include RocketPants::Cacheable

  validates :name, presence: true, length: { maximum: 64 }
  validates :rack_prefix, presence: true, length: { maximum: 5 }

  has_many :rack_locations, class_name: 'DatacenterRackLocation'
  has_many :racks, through: :rack_locations
end
