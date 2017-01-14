module OkuribitoDb
  class DbInfo < ActiveRecord::Base
    has_many :table_infos

    paginates_per 5
  end
end
