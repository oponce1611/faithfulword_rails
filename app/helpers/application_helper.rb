module ApplicationHelper
  def full_title(page_title = '')
    base_title = "Faithful Word Baptist Church - Tempe, AZ"
    page_title.empty? ? base_title : "#{page_title} | #{base_title}"
  end
  
  def ytube_embed(id, width, height)
    if id.include? '?'
      src = id + '&color=white'
    else
      src = id +'?color=white'
    end
    content_tag(:iframe,
                '',
                :src => "https://www.youtube.com/embed/#{src}",
                :id => "ytplayer",
                :width => width,
                :height => height,
                :frameborder => 0,
                :color => "white",
                :style => "border: solid 1px #ccc")
  end
  
  class CodeRayify < Redcarpet::Render::HTML
    def block_code(code, language)
      CodeRay.scan(code, language).div
    end
  end
  
  def markdown(text)
    coderayified = CodeRayify.new(filter_html: true, hard_wrap: true)
    
    options = {
      fenced_code_blocks: true,
      no_intra_emphasis: true,
      autolink: true,
      lax_html_blocks: true,
    }
    
    markdown_to_html = Redcarpet::Markdown.new(coderayified, options)
    markdown_to_html.render(text).html_safe
  end
end
