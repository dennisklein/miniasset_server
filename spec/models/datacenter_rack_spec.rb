require 'rails_helper'

RSpec.describe DatacenterRack, type: :model do
  context 'validators' do
    it 'factory is valid' do
      expect(build :datacenter_rack).to be_valid
    end

    it 'length' do
      expect(build :datacenter_rack, name: 'n' * 65).to be_invalid
      expect(build :datacenter_rack, custom_prefix: 'n' * 6).to be_invalid
    end
  end
end
