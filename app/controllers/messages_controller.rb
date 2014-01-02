class MessagesController < ApplicationController
  before_filter :authenticate_admin!
  before_filter :get_chat
  load_and_authorize_resource

  def index
    #@messages = Message.all
    @messages = @chat.messages
  end

  def show
    #@message = Message.find(params[:id])
    @message = @chat.messages.find(params[:id])
  end

  def new
    #@message = Message.new
    @chat = Chat.find(params[:chat_id])
    @message = @chat.messages.build
  end

  def edit
    #@message = Message.find(params[:id])
    @message = @chat.messages.find(params[:id])
  end

  def create
    #@message = Message.new(params[:message])
    @message = @chat.messages.build(params[:message])

    if @message.save
      #redirect_to request_chats_url(@request)
      redirect_to [@request, @chat]
    else
      render action: "new"
    end
  end

  def update
    #@message = Message.find(params[:id])
    @message = @chat.messages.find(params[:id])

    if @message.update_attributes(params[:message])
      #redirect_to request_chats_url(@request)
      redirect_to [@request, @chat]
    else
      render action: "edit"
    end
  end

  private
  def get_chat
    @request = Request.find(params[:request_id])
    @chat = @request.chats.find(params[:chat_id])
  end
end
