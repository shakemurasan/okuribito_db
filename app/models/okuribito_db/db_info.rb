module OkuribitoDb
  class DbInfo < ActiveRecord::Base
    has_many :table_infos
  end
end
