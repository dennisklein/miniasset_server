minicube = Datacenter.create name: 'Minicube', rack_prefix: 'TES'

(1..4).each do |row|
  (1..12).each do |cell|
    DatacenterRackLocation.create datacenter: minicube, rack: DatacenterRack.create(custom_prefix: 'A_'),
                                  floor: 1, row: row, cell: cell
  end
end
