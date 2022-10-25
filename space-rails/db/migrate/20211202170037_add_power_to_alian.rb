class AddPowerToAlian < ActiveRecord::Migration[6.1]
  def change
    add_reference :aliens, :power,  foreign_key: true
  end
end
