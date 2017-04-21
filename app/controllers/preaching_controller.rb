class PreachingController < ApplicationController
  def index
    @sermon = Sermon.new
    if !params[:search].blank?
      @sermons = Sermon.search(params[:search]).sorted
    else
      @sermons = Sermon.year(get_year(params[:year])).sorted
    end
    @years = (2006..Time.current.year).to_a
  end
  
  def show
    @sermon = Sermon.friendly.find(params[:id])
  end
  
  def create
    @sermon = Sermon.new(sermon_params)
    if @sermon.save
      redirect_to preaching_path
    else
      redirect_to preaching_path
    end
  end
  
  def edit
    @sermon = Sermon.friendly.find(params[:id])
  end
  
  def update
    @sermon = Sermon.friendly.find(params[:id])
    if @sermon.update(sermon_params)
      redirect_to sermon_path(@sermon)
    else
      redirect_to sermon_path(@sermon)
    end
  end
  
  def destroy
    @sermon = Sermon.friendly.find(params[:id])
    @sermon.destroy
    redirect_to preaching_path
  end
  
  def download
    @sermon = Sermon.friendly.find(params[:id])
    @sermon.dl_count += 1
    @sermon.save
    render :nothing => true
  end
  
  #def file
  #  @sermon = Sermon.friendly.find(params[:id])
  #  file = open(@sermon.mp3.url)
  #  @sermon.dl_count += 1
  #  @sermon.save
  #  send_file file, filename: File.basename(@sermon.mp3.url), type: "audio/mpeg", disposition: 'attachment'
  #end
  private
  
  def sermon_params
    params.require(:sermon).permit(:title,
                                  :preacher,
                                  :datetime,
                                  :mp3,
                                  :ytube_id,
                                  :scloud,
                                  :fire_hard,
                                  :location,
                                  :transcript,
                                  :format)
  end
  
  def get_year(year)
    if year.nil? || year.to_i <= 2005 || year.to_i >= Time.current.year
      Time.current.year
    else
      year.to_i
    end
  end
end
