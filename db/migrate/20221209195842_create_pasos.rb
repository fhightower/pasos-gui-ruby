class CreatePasos < ActiveRecord::Migration[7.0]
  def change
    create_table :pasos do |t|
      t.date :day
      t.string :destination

      t.timestamps
    end
  end
end
