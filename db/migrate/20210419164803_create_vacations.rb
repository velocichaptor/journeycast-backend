class CreateVacations < ActiveRecord::Migration[6.1]
  def change
    create_table :vacations do |t|
      t.string :title
      t.datetime :date
      t.datetime :day
      t.string :note
      t.integer :userId
      t.integer :locationId

      t.timestamps
    end
  end
end
