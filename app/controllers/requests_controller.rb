class RequestsController < ApplicationController
  before_filter :authenticate_admin!
  load_and_authorize_resource

  def index
    @requests = Request.all
  end

  def show
    @request = Request.find(params[:id])

    #@chats = Chat.order :id
  end

  def new
    @request = Request.new
  end

  def edit
    @request = Request.find(params[:id])
  end

  def create
    @request = Request.new(params[:request])

    if @request.save
      redirect_to @request
    else
      render action: "new"
    end
  end

  def update
    @request = Request.find(params[:id])

    if @request.update_attributes(params[:request])
      redirect_to @request
    else
      render action: "edit"
    end
  end
end
