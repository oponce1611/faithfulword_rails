class PreachingController < ApplicationController
  before_action :require_user, except: [:index, :show, :download]
  before_action :set_s3_direct_post, only: [:index ,:new, :edit, :create, :update, :show]

  def index
    @sermon = Sermon.new
    @years = (2006..Time.current.year).to_a
    @total_dl = Sermon.sum(:dl_count)
    if !params[:search].nil?
      if params[:search].blank?
        @sermons = []
      else
        @sermons = Sermon.search(params[:search]).sorted
      end
    else
      @sermons = Sermon.year(get_year(params[:year])).sorted
    end
  end
  
  def show
    @sermon = Sermon.friendly.find(params[:id])
  end
  
  def new
    @sermon = Sermon.new(key: params[:key])
    puts @sermon.class
  end
  
  def create
    @sermon = Sermon.new(sermon_params)
    if @sermon.save
      flash[:alert] = "Successfully Uploaded Sermon"
      redirect_to preaching_path
    else
      flash[:error] = @sermon.errors.full_messages
      redirect_to preaching_path
    end
  end
  
  def edit
    @sermon = Sermon.friendly.find(params[:id])
  end
  
  def update
    @sermon = Sermon.friendly.find(params[:id])
    if @sermon.update(sermon_params)
      flash[:alert] = "Successfully Updated Sermon"
      redirect_to sermon_path(@sermon)
    else
      flash[:alert] = "Error"
      redirect_to sermon_path(@sermon)
    end
  end
  
  def destroy
    @sermon = Sermon.friendly.find(params[:id])
    S3_BUCKET.object(@sermon.mp3.sub("//faithfulword.s3-us-west-1.amazonaws.com/","")).delete
    @sermon.destroy
    flash[:alert] = "Successfully Deleted Sermon"
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
                                  :mp3,
                                  :preacher,
                                  :datetime,
                                  :ytube_id,
                                  :scloud,
                                  :fire_hard,
                                  :location,
                                  :transcript,
                                  :format
                                  )
  end
  
  def set_s3_direct_post
    @s3_direct_post = S3_BUCKET.presigned_post(key: "Sermons/Preaching/${filename}", success_action_status: '201', acl: 'public-read')
  end
  
  def get_year(year)
    if year.nil? || year.to_i <= 2005 || year.to_i >= Time.current.year
      Time.current.year
    else
      year.to_i
    end
  end
end
