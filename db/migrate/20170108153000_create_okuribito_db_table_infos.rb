class CreateOkuribitoDbTableInfos < ActiveRecord::Migration
  def change
    create_table :okuribito_db_table_infos do |t|
      t.string :table_name, null: false
      t.integer :table_rows, null: false
      t.integer :avg_row_length, null: false
      t.integer :total_data_length, null: false

      t.timestamps
    end
    add_index :okuribito_db_table_infos, :table_name
  end
end
