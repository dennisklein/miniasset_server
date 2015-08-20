require 'rails_helper'

RSpec.describe DatacenterRack, type: :model do
  context 'name: validator' do
    it 'max 64 characters' do
      expect(DatacenterRack.new(name: 'n' * 64)).to be_valid
      expect(DatacenterRack.new(name: 'n' * 65)).to be_invalid
    end

    it 'must be present' do
      expect(DatacenterRack.new(name: '')).to be_invalid
      expect(DatacenterRack.new(name: '    ')).to be_invalid
      expect(DatacenterRack.new(name: nil)).to be_invalid
    end
  end

  context 'name: db constraint' do
    it 'is unique' do
      DatacenterRack.create(name: 'asdf')
      expect { DatacenterRack.create(name: 'asdf') }.to raise_error(ActiveRecord::RecordNotUnique)
    end

    it 'is not null' do
      expect(DatacenterRack.new(name: nil).save).not_to be
    end
  end
end
