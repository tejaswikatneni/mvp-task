class AddNewColumnToMvps < ActiveRecord::Migration[5.0]
  def change
  	add_column :mvps, :user_id, :string
  end
end
