class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :title
      t.string :description
      t.integer :hex

      t.timestamps
    end
  end
end
