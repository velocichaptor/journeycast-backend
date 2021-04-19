class CreateDays < ActiveRecord::Migration[6.1]
  def change
    create_table :days do |t|
      t.string :name
      t.string :forecast
      t.string :activity
      t.integer :vacation_id

      t.timestamps
    end
  end
end
