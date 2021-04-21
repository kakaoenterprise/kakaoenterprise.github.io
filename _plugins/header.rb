class Jekyll::MarkdownHeader < Jekyll::Converters::Markdown
    def convert(content)
        super.gsub(/<a id="(\d+)">/, '<a id="\1" href="#rf\1">')
    end
end

class Jekyll::MarkdownHeader1 < Jekyll::Converters::Markdown
    def convert(content)
        super.gsub(/<a id="rf(\d+)">/, '<a id="rf\1" href="#\1">')
    end
end