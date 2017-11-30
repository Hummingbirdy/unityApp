class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.date :due_date
      t.time :due_time
      t.belongs_to :group, foreign_key: true

      t.timestamps
    end
  end
end
