module ApplicationHelper
  def full_title(page_title = '')
    base_title = "Faithful Word Baptist Church - Tempe, AZ"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
  
  def ytube_embed(id, x, y)
    content_tag(:iframe,
                '',
                :src => "https://www.youtube.com/embed/#{id}?enablejsapi=1",
                :id => "ytplayer",
                :width => x,
                :height => y,
                :frameborder => 0,
                :style => "border: solid 1px #ccc")
  end
end
