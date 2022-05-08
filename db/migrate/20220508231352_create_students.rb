class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.integer :StudentID
      t.string :Name
      t.string :Email
      t.integer :Year
      t.string :Building
      t.string :Room

      t.timestamps
    end
  end
end
