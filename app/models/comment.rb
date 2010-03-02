class Comment
  include MongoMapper::EmbeddedDocument
  
  key :title, String
  key :description, String
  timestamps!
  
  key :author_id, ObjectId
  belongs_to :author, :class_name => "User"
  
end