class ChatsController < ApplicationController
  before_filter :authenticate_admin!
  before_filter :get_request
  load_and_authorize_resource

  def index
    #@chats = Chat.all
    @chats = @request.chats
  end

  def show
    #@chat = Chat.find(params[:id])
    @chat = @request.chats.find(params[:id])
  end

  def new
    #@chat = Chat.new
    @request = Request.find(params[:request_id])
    @chat = @request.chats.build
  end

  def edit
    #@chat = Chat.find(params[:id])
    @chat = @request.chats.find(params[:id])
  end

  def create
    #@chat = Chat.new(params[:request])
    @chat = @request.chats.build(params[:chat])

    if @chat.save
      #redirect_to request_chats_url(@request)
      redirect_to @request
    else
      render action: "new"
    end
  end

  def update
    #@chat = Chat.find(params[:id])
    @chat = @request.chats.find(params[:id])

    if @chat.update_attributes(params[:chat])
      #redirect_to request_chats_url(@request)
      redirect_to @request
    else
      render action: "edit"
    end
  end

  private
  def get_request
    @request = Request.find(params[:request_id])
  end
end
