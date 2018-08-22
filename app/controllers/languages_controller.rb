class LanguagesController < ApplicationController
  before_action :find_language, only: [:show, :edit, :update]

  def index
    @languanges = Language.all
  end

  def show
  end

  def edit
  end

  def update
    if @language.update(language_params)
      redirect_to @language
    else
      render :edit
    end
  end

  def new
    @language = Language.new
  end

  def create
    @language = Language.new(language_params)
    if @language.save
      redirect_to @language
    else
      render :new
    end
  end

  def destroy
    Language.destroy(params[:id])
    redirect_to languanges_path
  end

  private

  def find_language
    @language = Language.find(params[:id])
  end

  def language_params
    params.require(:language).permit(:name)
  end
end
