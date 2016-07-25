class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.integer :studio_id
      t.integer :area_id
      t.integer :type_id
      t.datetime :time

      t.timestamps
    end
  end
end
