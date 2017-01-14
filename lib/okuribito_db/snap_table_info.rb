module OkuribitoDb
  class SnapTableInfo
    def self.snap
      adapter = Rails.configuration.database_configuration[Rails.env]["adapter"]
      unless adapter == "mysql2"
        puts "Sorry, OkuribitoDB don't support #{adapter}"
        return
      end

      db_info = create_db_info
      table_infos.each { |table_info| create_table_info(table_info, db_info) }
    end

    private

    def self.table_infos
      ActiveRecord::Base.connection.select_all("SELECT table_name, table_rows, avg_row_length, (data_length + index_length) AS total_data_length FROM INFORMATION_SCHEMA.TABLES WHERE table_schema=database();").to_hash
    end

    def self.create_db_info
      DbInfo.create
    end

    def self.create_table_info(table_info, db_info)
      TableInfo.create(db_info: db_info,
                       table_name: table_info["table_name"],
                       table_rows: table_info["table_rows"],
                       avg_row_length: table_info["avg_row_length"],
                       total_data_length: table_info["total_data_length"])
    end
  end
end
