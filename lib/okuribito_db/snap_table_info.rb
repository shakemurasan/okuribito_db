module OkuribitoDb
  class SnapTableInfo
    def self.snap
      table_infos.each { |table_info| create_table_info(table_info) }
    end

    private

    def self.table_infos
      ActiveRecord::Base.connection.select_all("SELECT table_name, table_rows, avg_row_length, (data_length + index_length) AS total_data_length FROM INFORMATION_SCHEMA.TABLES WHERE table_schema=database();").to_hash
    end

    def self.create_table_info(table_info)
      TableInfo.create(table_name: table_info["table_name"],
                       table_rows: table_info["table_rows"],
                       avg_row_length: table_info["avg_row_length"],
                       total_data_length: table_info["total_data_length"])
    end
  end
end
