class CreateOkuribitoDbDbInfos < ActiveRecord::Migration
  def change
    create_table :okuribito_db_db_infos do |t|
      t.timestamps
    end
  end
end
