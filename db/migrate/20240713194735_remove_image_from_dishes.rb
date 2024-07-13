class RemoveImageFromDishes < ActiveRecord::Migration[7.1]
  def change
    remove_column :dishes, :image, :string
  end
end
