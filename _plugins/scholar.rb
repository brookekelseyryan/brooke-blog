# https://github.com/inukshuk/bibtex-ruby/issues/105
# code adapted from: https://github.com/iiegn/iiegn.eu-jekyll-site/blob/master/_plugins/jekyll-scholar.rb
module BibTeX
    module Filters
        class LaTeX < Filter
            def apply(value)
                if %r{https?|ftps?}.match(value)
                    value.to_s.gsub! '\~','~'
                    return value
                else
                    ::LaTeX.decode(value)
                end
            end
        end
    end
end