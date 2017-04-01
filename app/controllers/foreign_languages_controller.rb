class ForeignLanguagesController < ApplicationController
  def index
    @tongues = Language.all
    @tongue = Language.new
  end
  
  def show
    @tongue = Language.find(params[:id])
  end
  
  def create
    @tongue = Language.new(tongue_params)
    if @tongue.save
      redirect_to foreignlanguages_path
    else
      @tongues = Language.all
      @tongue = Language.new
      render 'index'
    end
  end
  
  def update
    @tongue = Language.find(params[:id])
    if @tongue.update(tongue_params)
      redirect_to foreignlanguages_paths
    else
      redirect_to foreignlanguages_path
    end
  end
  
  def destroy
    @tongue = Language.find(params[:id])
    @tongue.destroy
    redirect_to foreignlanguages_path
  end
  
  private
  def tongue_params
    params.require(:language).permit(:tongue)
  end
end