class SessionsController < ApplicationController
  def new

  end

  def create
    @writer = Writer.find_by(pen_name: params[:pen_name])
      if @writer && @writer.authenticate(params[:password])
        session[:writer_id] = @writer.id
        redirect_to stories_path
      else
        redirect_to login_path
      end
  end
end
