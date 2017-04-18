class PreachingController < ApplicationController
  def index
    @sermon = Sermon.new
    @years = (2006..Time.current.year).to_a
    
    year = params[:year].to_i
    year = Time.current.year if year.nil? || year <= 2005 || year >= Time.current.year
    @sermons = Sermon.where("datetime >= ? and datetime <= ?", "#{year}-01-01 07:00:00", "#{year}-12-31 23:59:59 -0700")
    @sermons = @sermons.order('datetime DESC')
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
      render :edit
    end
  end
  
  def destroy
    
  end
  
  def file
    @sermon = Sermon.friendly.find(params[:id])
    file = open(@sermon.mp3.url)
    @sermon.dl_count += 1
    @sermon.save
    send_file file, filename: File.basename(@sermon.mp3.url), type: "audio/mpeg", disposition: 'attachment'
  end
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
end
