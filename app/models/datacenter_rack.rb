class DatacenterRack < ActiveRecord::Base
  include RocketPants::Cacheable

  validates :name, length: { maximum: 64 }
  validates :custom_prefix, length: { maximum: 5 }

  has_one :location, class_name: 'DatacenterRackLocation'
  has_one :datacenter, through: :location

  has_one :type, class_name: 'DatacenterRackType'

  def label
    return name unless name.nil?

    w_f = Math.log(datacenter.max_floors, 16).ceil
    w_r = Math.log(datacenter.max_rows_per_floor, 16).ceil
    w_c = Math.log(datacenter.max_cells_per_row, 16).ceil
    "#{datacenter.rack_prefix}%0#{w_f}X#{custom_prefix}%0#{w_r}X%0#{w_c}X" % [location.floor, location.row, location.cell]
  end
end
