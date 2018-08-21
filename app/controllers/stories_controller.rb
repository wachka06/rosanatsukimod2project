class StoriesController < ApplicationController
    before_action :find_story, only: [:show, :edit, :update, :beginning]

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
        redirect_to beginning_path(@story)
      else
        render :new
      end
  end

  def beginning
    render :beginning
  end

  def savebeginning
    @story = Story.update(story_params)
    if @story.save?
      redirect_to #THE DEVELOPMENT PAGE
    else
      redirect_to :beginning
    end

  end

  def development
    render :development
  end

  def savedevelopment
  @story = Story.update(story_params()
  end

  def twist

  end

  def savetwist

  end

  def conclusion

  end

  def destroy
    Story.destroy(params[:id])
    redirect_to stories_path
  end

  private

  def find_story
    @story = Story.find(params[:id])
  end

  def story_params
    params.require(:story).permit(:title, :beginning, :development, :twist, :conclusion, :writer_ids)
  end

end
