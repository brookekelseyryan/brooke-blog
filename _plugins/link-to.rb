# code from https://github.com/m-pilia/m-pilia.github.io/commit/28336d253714ca
# Custom Liquid filter to create hyperlinks
# {{ 'href' | link_to: 'input' }}
module Jekyll::CustomFilter
  def link_to(input, href)
    "<a href=\"#{href}\">#{input}</a>"
  end
end

Liquid::Template.register_filter(Jekyll::CustomFilter)