
# MongoMapper.database = ENV["MONGOHQ_DATABASE"]
MongoMapper.config = {
  "production" => {
    "host" => ENV["MONGOHQ_HOST"],
    "port" => ENV["MONGOHQ_PORT"],
    "database" => ENV["MONGOHQ_DATABASE"],
    "username" => ENV["MONGOHQ_USERNAME"],
    "password" => ENV["MONGOHQ_PASSWORD"]
  }
}
MongoMapper.connect "production"