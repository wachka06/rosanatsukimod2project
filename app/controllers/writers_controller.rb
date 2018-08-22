class WritersController < ApplicationController
  before_action :find_writer, only: [:show, :edit, :update]

  def index
    @writers = Writer.all
  end

  def show
  end

  def new
    @writer = Writer.new
  end

  def create
    @writer = Writer.new(writer_params)
    if @writer.save
      redirect_to @writer
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @writer.update(writer_params)
      redirect_to @writer
    else
      render :edit
    end
  end

  def destroy
    Writer.destroy(params[:id])
    redirect_to writers_path
  end

  private

  def find_writer
    @writer = Writer.find(params[:id])
  end

  def writer_params
    params.require(:writer).permit(:pen_name, :password)
  end
end
