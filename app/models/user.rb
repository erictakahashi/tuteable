class User < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :requests
  has_many :chats
end
