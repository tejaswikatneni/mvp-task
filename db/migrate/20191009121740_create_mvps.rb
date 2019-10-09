class CreateMvps < ActiveRecord::Migration[5.0]
  def change
    create_table :mvps do |t|
      t.text :measure_data
      t.text :signal_data
      t.integer :threshold

      t.timestamps
    end
  end
end
