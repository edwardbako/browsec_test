class RequestsController < ApplicationController

  def index
    @request = Request.new
    @requests = Request.all.order(:created_at)
    @size = Request.count
  end

  def create
    @request = Request.new(request_params)
    if @request.save
      redirect_to requests_path
    else
      respond_to do |format|
        format.js
      end
    end
  end

  private

  def request_params
    params.require(:request).permit(:text)
  end

end