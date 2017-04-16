module PreachingHelper
  
  def next_month(sermon)
    index = @sermons.pluck(:datetime).index(sermon.datetime)
    next_date = @sermons.pluck(:datetime)[index - 1]
    sermon.datetime.month != next_date.month
  end
 
end
