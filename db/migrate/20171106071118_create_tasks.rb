class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.datetime :due_date
      t.integer :hours
      t.belongs_to :project, foreign_key: true

      t.timestamps
    end
  end
end
