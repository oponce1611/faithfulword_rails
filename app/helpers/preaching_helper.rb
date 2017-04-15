module PreachingHelper
  
  def next_month(date)
    index = @sermons.pluck(:datetime).index(date)
    next_date = @sermons.pluck(:datetime)[index - 1]
    puts next_date.class
    
    if !next_date.nil?
      next_date.month
    end
  end
 
end
