class Datacenter < ActiveRecord::Base
  include RocketPants::Cacheable

  validates :name, presence: true, length: { maximum: 64 }

  has_many :datacenter_racks
end
