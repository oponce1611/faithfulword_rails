class PreachingController < ApplicationController
  def index
    year = params[:year].to_i
    year = Time.current.year if year.nil? || year <= 2005 || year >= Time.current.year
    
    @years = (2006..Time.current.year).to_a
    
    @sermons = Sermon.where("cast(strftime('%Y', datetime) as int) = ?", year)
    @sermons = @sermons.order('datetime DESC')
  end
  
  def show
    @sermon = Sermon.friendly.find(params[:id])
  end
  
  def edit
    @sermon = Sermon.friendly.find(params[:id])
  end
  
  def update
    @sermon = Sermon.friendly.find(params[:id])
     respond_to do |format|
      if @sermon.update(sermon_params)
        format.html { redirect_to preaching_path }
      else
        format.html { render :edit }
      end
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
