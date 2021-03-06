class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.date :due_date
      t.time :due_time
      t.integer :hours
      t.string :member
      t.belongs_to :project, foreign_key: true

      t.timestamps
    end
  end
end
