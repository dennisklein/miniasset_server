require 'rails_helper'

RSpec.describe Datacenter, type: :model do
  context 'validators' do
    it 'factory is valid' do
      expect(build :datacenter).to be_valid
    end

    it 'length' do
      expect(build :datacenter, name: 'n' * 65).to be_invalid
      expect(build :datacenter, rack_prefix: 'n' * 6).to be_invalid
    end

    it 'presence' do
      %i(name rack_prefix max_floors max_rows_per_floor max_cells_per_row).each do |attr|
        expect(build :datacenter, Hash[attr, nil]).to be_invalid
      end
    end
  end

  context 'db constraints' do
    it 'is unique' do
      create :datacenter, name: 'unique'
      expect { create :datacenter, name: 'unique' }.to raise_error(ActiveRecord::RecordNotUnique)
    end
  end
end
