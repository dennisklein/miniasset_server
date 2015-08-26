class RemoveAllDbLevelNullConstraints < ActiveRecord::Migration
  def change
    # we handle null constraints on AR-level only
    change_column_null :datacenters, :name, true
    change_column_null :hosts, :name, true
  end
end
