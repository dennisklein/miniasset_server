class Host < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 64 }
end
