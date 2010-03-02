class Comment
  include MongoMapper::EmbeddedDocument
  
  key :title, String
  key :description, String
  key :posted_at, Time
  
  key :author_id, ObjectId
  belongs_to :author, :class_name => "User"
end