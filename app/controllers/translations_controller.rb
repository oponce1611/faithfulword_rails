class TranslationsController < ApplicationController
  def show
    @translation = Translation.find(params[:id])
  end
  
  def create
    @translation = Translation.new(translation_params)
    if @translation.save
      redirect_to @translation
    else
      redirect_to @translation
    end
  end
  
  def edit
    @translation = Translation.find(params[:id])
  end
  
  def update
    @translation = Translation.find(params[:id])
    if @translation.update(translation_params)
      redirect_to @translation
    else
      redirect_to @translation
    end
  end
  
  def destroy
    @translation = Translation.find(params[:id])
    @translation.destroy
    redirect_to foreignlanguages_path
  end
  
  private
  def translation_params
    params.require(:translation).permit(:title, :body, :published, :video_id, :language_id)
  end
end
