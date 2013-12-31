class Chats < ActiveRecord::Base
  attr_accessible :category, :content, :offer, :request_id, :sessiontime, :subcategor, :subject, :tutor_id, :user_id, :viewed
end
