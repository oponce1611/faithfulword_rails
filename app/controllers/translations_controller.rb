class TranslationsController < ApplicationController
  before_action :require_user, except: [:show]
  def show
    @translation = Translation.friendly.find(params[:id])
  end
  
  def create
    @translation = Translation.new(translation_params)
    if @translation.save
      redirect_to foreignlanguage_path(@translation.language)
    else
      redirect_to foreignlanguage_path(@translation.language)
    end
  end
  
  def edit
    @translation = Translation.friendly.find(params[:id])
  end
  
  def update
    @translation = Translation.friendly.find(params[:id])
    if @translation.update(translation_params)
      redirect_to translation_path(@translation.language, @translation)
    else
      redirect_to translation_path(@translation.language, @translation)
    end
  end
  
  def destroy
    @translation = Translation.friendly.find(params[:id])
    @translation.destroy
    redirect_to foreignlanguages_path
  end
  
  private
  def translation_params
    params.require(:translation).permit(:title,
                                        :body,
                                        :published,
                                        :video_id,
                                        :language_id)
  end
end
