class CreateGroupMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :group_members do |t|
      t.text :name
      t.belongs_to :group, foreign_key: true

      t.timestamps
    end
  end
end
