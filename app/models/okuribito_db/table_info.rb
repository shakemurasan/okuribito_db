module OkuribitoDb
  class TableInfo < ActiveRecord::Base
    validates :table_name, presence: true, length: { minimum: 1, maximum: 1024 }
    validates :table_rows, presence: true, numericality: { only_integer: true }
    validates :avg_row_length, presence: true, numericality: { only_integer: true }
    validates :total_data_length, presence: true, numericality: { only_integer: true }
  end
end
