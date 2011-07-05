class Contact
  include Mongoid::Document
  include Mongoid::Timestamps
  field :mail, :type => String
  
  validates_presence_of :mail
  validates_uniqueness_of :mail
end
