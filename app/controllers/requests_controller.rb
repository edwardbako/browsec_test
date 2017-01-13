class RequestsController < ApplicationController

  def index
    @request = Request.new
    set_requests
  end

  def create
    @request = Request.new(request_params)
    if @request.save
      redirect_to root_path
    else
      set_requests
      render :index
    end
  end

  private

  def request_params
    params.require(:request).permit(:text)
  end

  def set_requests
    @requests = Request.all.order(:created_at)
    @size = Request.count
  end
end