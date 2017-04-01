module ApplicationHelper
  
  def full_title(page_title = '')
    base_title = "Faithful Word Baptist Church - Tempe, AZ"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
  
  def active(path)
    if request.env['PATH_INFO'] == path
      true
    end
  end
  
end
