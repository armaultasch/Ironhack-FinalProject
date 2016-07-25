class CreateStudios < ActiveRecord::Migration[5.0]
  def change
    create_table :studios do |t|
      t.integer :area_id
      t.decimal :lat
      t.decimal :lng
      t.string :name
      t.string :phone
      t.string :address
      t.integer :type_id

      t.timestamps
    end
  end
end
