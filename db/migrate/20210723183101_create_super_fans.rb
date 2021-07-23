class CreateSuperFans < ActiveRecord::Migration[6.1]
  def change
    create_table :super_fans do |t|
      t.string :name
      t.string :years_of_fandom
      t.belongs_to :song, null: false, foreign_key: true

      t.timestamps
    end
  end
end
