class CreateAssessors < ActiveRecord::Migration[7.0]
  def change
    create_table :assessors do |t|
      t.string :name
      t.string :id
      t.string :integer
      t.string :contact
      t.string :integer
      t.string :workStation
      t.string :assesorCode
      t.string :accountNumber
      t.string :integer
      t.string :bankName
      t.string :branchName
      t.string :branchCode
      t.string :integer

      t.timestamps
    end
  end
end
