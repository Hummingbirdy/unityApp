class CreateTeammates < ActiveRecord::Migration[5.1]
  def change
    create_table :teammates do |t|
      t.string :email
      t.belongs_to :group, foreign_key: true

      t.timestamps
    end
  end
end
