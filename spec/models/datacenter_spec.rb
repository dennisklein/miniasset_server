require 'rails_helper'

RSpec.describe Datacenter, type: :model do
  context 'name: validator' do
    it 'max 64 characters' do
      expect(Datacenter.new(name: 'n' * 64)).to be_valid
      expect(Datacenter.new(name: 'n' * 65)).to be_invalid
    end

    it 'must be present' do
      expect(Datacenter.new(name: '')).to be_invalid
      expect(Datacenter.new(name: '    ')).to be_invalid
      expect(Datacenter.new(name: nil)).to be_invalid
    end
  end

  context 'name: db constraint' do
    it 'is unique' do
      Datacenter.create(name: 'asdf')
      expect { Datacenter.create(name: 'asdf') }.to raise_error(ActiveRecord::RecordNotUnique)
    end

    it 'is not null' do
      expect(Datacenter.new(name: nil).save).not_to be
    end
  end
end
