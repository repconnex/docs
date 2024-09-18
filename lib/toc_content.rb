
def toc_content(page_content)
  str = ""
  toc_data(page_content).each do |h1|     
    str << "<li><a href='##{h1[:id]}' class='toc-h1 toc-link' data-title='#{h1[:content]}'>#{h1[:content]}</a>\n"
    if h1[:children].length > 0
      str << "<ul class='toc-list-h2'>\n"
      h1[:children].each do |h2|
        str << "<li><a href='##{h2[:id]}' class='toc-h2 toc-link' data-title='#{h2[:content]}'>#{h2[:content]}</a></li>\n"      
      end
      str << "</ul>\n"
    end
    str << "</li>\n"
  end
  return str
end
