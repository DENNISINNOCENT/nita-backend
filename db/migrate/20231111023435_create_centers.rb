class CreateCenters < ActiveRecord::Migration[7.0]
  def change
    create_table :centers do |t|
      t.string :name
      t.integer :centerCode

      t.timestamps
    end
  end
end
