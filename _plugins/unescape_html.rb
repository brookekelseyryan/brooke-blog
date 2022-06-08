# code from https://github.com/m-pilia/m-pilia.github.io/commit/28336d253714ca
# Unescape HTML in the prefix and suffix of elements in the CLS.
# Required to be able to insert HTML tags within the CLS.
require 'cgi'
require 'citeproc/ruby'

class CiteProc::Ruby::Formats::Html
  def prefix
    CGI.unescape_html options[:prefix]
  end

  def suffix
    CGI.unescape_html options[:suffix]
  end

end