class CreateHousings < ActiveRecord::Migration[7.0]
  def change
    create_table :housings do |t|
      t.string :House

      t.timestamps
    end
  end
end
