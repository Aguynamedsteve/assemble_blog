class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :body, type: String

  belongs_to :author, :class_name => 'User'

  validates_uniqueness_of :title
  validates_presence_of :title
  validates_presence_of :author
  validates_presence_of :body
end
