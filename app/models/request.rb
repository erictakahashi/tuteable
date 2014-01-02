class Request < ActiveRecord::Base
  attr_accessible :id, :category, :description, :sessiontime, :subcategory, :subject, :urgency_id, :lastping, :tutor_id, :user_id, :paid, :price, :created_at, :updated_at, :title

  has_many :chats
  belongs_to :user
  belongs_to :tutor
end
