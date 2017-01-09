require_dependency "okuribito_db/application_controller"

module OkuribitoDb
  class DbInfosController < ApplicationController
    def index
      @db_infos = DbInfo.all.order("id DESC")
      @db_info_ids = @db_infos.pluck(:id)
      @table_infos = TableInfo.bundle(@db_info_ids).group_by(&:table_name)
    end
  end
end
