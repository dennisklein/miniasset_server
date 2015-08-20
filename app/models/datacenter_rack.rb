class DatacenterRack < ActiveRecord::Base
  include RocketPants::Cacheable

  validates :name, presence: true, length: { maximum: 64 }
end
