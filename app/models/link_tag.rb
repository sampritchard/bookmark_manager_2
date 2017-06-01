require 'data_mapper'
require 'dm-postgres-adapter'

class Link_Tag
  include DataMapper::Resource

  property :id,       Serial
  property :link_id,  Integer
  property :tag_id,   Integer

end

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
