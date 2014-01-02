class Chat < ActiveRecord::Base
  attr_accessible :category, :content, :offer, :request_id, :sessiontime, :subcategor, :subject, :tutor_id, :user_id, :viewed

  belongs_to :request
  has_many :messages
  belongs_to :user
  belongs_to :tutor
end
