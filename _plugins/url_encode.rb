# _plugins/url_encode.rb
require 'liquid'
require 'uri'

# Percent encoding for URI conforming to RFC 3986.
# Ref: http://tools.ietf.org/html/rfc3986#page-12
module URLEncoding
  def url_encode(url)
    return url.gsub( /&/, '&amp;' )
  end
end

Liquid::Template.register_filter(URLEncoding)
