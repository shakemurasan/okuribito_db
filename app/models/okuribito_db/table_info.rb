module OkuribitoDb
  class TableInfo < ActiveRecord::Base
    belongs_to :db_info

    validates :table_name, presence: true, length: { minimum: 1, maximum: 1024 }
    validates :table_rows, presence: true, numericality: { only_integer: true }
    validates :avg_row_length, presence: true, numericality: { only_integer: true }
    validates :total_data_length, presence: true, numericality: { only_integer: true }

    scope :bundle, ->(ids) { where(db_info_id: ids).order("table_name, db_info_id DESC") }
  end
end
