class Song
  include Mongoid::Document
  
  field :title
  field :author
  
  mount_uploader :content, MediafileUploader
end
