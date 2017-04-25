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
