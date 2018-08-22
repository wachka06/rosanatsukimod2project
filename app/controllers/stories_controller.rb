class StoriesController < ApplicationController
  before_action :find_stories, only: [:show, :edit, :update]

  def index
    @stories = Story.all
  end

  def show
  end

  def edit
  end

  def update
    if @story.update(story_params)
      redirect_to @story
    else
      render :edit
    end
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)
    if @story.save
      redirect_to @story
    else
      render :new
    end
  end

  def destroy
    Story.destroy(params[:id])
    redirect_to stories_path
  end

  private

  def find_stories
    @story = Story.find(params[:id])
  end

  def story_params
    params.require(:story).permit(:title, :beginning, :development, :twist, :conclusion)
  end
end
