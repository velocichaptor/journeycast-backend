class CreateVacations < ActiveRecord::Migration[6.1]
  def change
    create_table :vacations do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :end_date
      t.datetime :day
      t.string :note
      t.integer :user_id
      t.integer :location_id

      t.timestamps
    end
  end
end
