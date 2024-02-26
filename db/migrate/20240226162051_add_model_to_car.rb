class AddModelToCar < ActiveRecord::Migration[7.1]
  def change
    add_column :cars, :model, :string
  end
end
