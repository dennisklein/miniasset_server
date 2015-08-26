class DatacenterRackType < ActiveRecord::Base
  belongs_to :datacenter_rack

  validates :name, presence: true, length: { maximum: 64 }
end
