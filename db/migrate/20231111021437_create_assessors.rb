class CreateAssessors < ActiveRecord::Migration[7.0]
  def change
    create_table :assessors do |t|
      t.string :name
      t.integer :idNo
      t.integer :contact
      t.string :workStation
      t.string :assesorCode
      t.string :accountName
      t.integer :accountNumber
      t.string :bankName
      t.string :branchName
      t.integer :branchCode

      t.timestamps
    end
  end
end
