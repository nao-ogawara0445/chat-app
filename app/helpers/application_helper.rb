module ApplicationHelper
  require "uri"

def text_url_to_link message

  URI.extract(message, ['http']).uniq.each do |url|
    sub_message = ""
    sub_message << "<a href=" << url << " target=\"_blank\">" << url << "</a>"

    message.gsub!(url, sub_message)
  end

  return message
end
  
end
