##########################################################################
# Database
# - ActiveRecord (default)
# - Datamapper
# - Sequel
# - MongoMapper

puts "Creating Database Components"

code_path = Rails.root.join("db", "1_orm")
step = Step.create :name => "orm", 
                   :title => "Database", 
                   :primary_group => true,
                   :order => 1,
                   :header => "Choose a Database Library",
                   :description => "Database copy ... Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "

# ActiveRecord
step.components.create :title => "ActiveRecord", 
                       :name => "ar",
                       :in_rails_stack => true,
                       :primary_group => true,
                       :info_url => "http://ar.rubyonrails.org",
                       :code => code_path.join("ar.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# Datamapper
step.components.create :title => "Datamapper", 
                       :name => "dm",
                       :primary_group => true,
                       :info_url => "http://datamapper.org",
                       :source_url => "http://github.com/datamapper/dm-core",
                       :code => code_path.join("dm.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."


# Sequel
step.components.create :title => "Sequel", 
                       :name => "sequel",
                       :primary_group => true,
                       :info_url => "http://sequel.rubyforge.org",
                       :source_url => "http://github.com/jeremyevans/sequel",
                       :code => code_path.join("sequel.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."


# MongoMapper
step.components.create :title => "MongoMapper", 
                       :name => "mongomapper",
                       :primary_group => true,
                       :info_url => "http://mongomapper.com",
                       :source_url => "http://github.com/jnunemaker/mongomapper",
                       :code => code_path.join("mongomapper.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."


# ATTACHMENTS:
# - carrier_wave
# - paperclip (activerecord)
# - paperclip (datamapper)
# - attachment_fu (activerecord)

# carrier_wave
step.components.create :addon_group => "attachments",
                       :title => "Carrier Wave", 
                       :name => "carrierwave",
                       :depends_on_components => ["ar", "dm", "sequel", "mongomapper"],
                       :info_url => "http://carrierwave.rubyforge.org",
                       :source_url => "http://github.com/jnicklas/carrierwave",
                       :code => code_path.join("attachments", "carrierwave.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# paperclip (activerecord)
step.components.create :addon_group => "attachments",
                       :title => "Paperclip", 
                       :name => "paperclip",
                       :depends_on_components => ["ar"],
                       :info_url => "http://www.thoughtbot.com/projects/paperclip",
                       :source_url => "http://github.com/thoughtbot/paperclip",
                       :code => code_path.join("attachments", "paperclip.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# paperclip (datamapper)
step.components.create :addon_group => "attachments",
                       :title => "Paperclip", 
                       :name => "dm-paperclip",
                       :depends_on_components => ["dm"],
                       :info_url => "http://invalidlogic.com/dm-paperclip/",
                       :source_url => "http://github.com/krobertson/dm-paperclip",
                       :code => code_path.join("attachments", "dm-paperclip.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# attachment_fu
step.components.create :addon_group => "attachments",
                       :title => "AttachmentFu", 
                       :name => "attachmentfu",
                       :depends_on_components => ["ar"],
                       :source_url => "http://github.com/technoweenie/attachment_fu",
                       :code => code_path.join("attachments", "attachmentfu.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."



