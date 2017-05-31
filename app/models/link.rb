require 'data_mapper'
require 'dm-postgres-adapter'

class Link
  include DataMapper::Resource

  DataMapper.setup(:default, 'postgres://localhost/database_play')

  property :id,    Serial
  property :title, String
  property :url,   String

    DataMapper.finalize
    DataMapper.auto_upgrade!
end
