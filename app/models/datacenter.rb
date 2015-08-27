class Datacenter < ActiveRecord::Base
  include RocketPants::Cacheable

  DEFAULTS = {
    max_floors: 16,
    max_rows_per_floor: 16,
    max_cells_per_row: 16
  }

  def initialize(attributes = {})
    attr_with_defaults = DEFAULTS.merge(attributes)
    super(attr_with_defaults)
  end

  validates :name, presence: true, length: { maximum: 64 }
  validates :rack_prefix, presence: true, length: { maximum: 5 }
  validates :max_floors, presence: true
  validates :max_rows_per_floor, presence: true
  validates :max_cells_per_row, presence: true

  has_many :rack_locations, class_name: 'DatacenterRackLocation'
  has_many :racks, through: :rack_locations
end
