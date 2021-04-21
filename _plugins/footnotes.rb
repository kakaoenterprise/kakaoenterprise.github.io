module FootnoteUtils
  def page_hash(page)
    page['url'].hash.to_s(16)[-4,4]
  end

  def footnote_id(context, id)
    "#{page_hash(context.registers[:page])}:fn:#{id}"
  end

  def backlink_id(context, id)
    "#{page_hash(context.registers[:page])}:fn-back:#{id}"
  end
end

module Jekyll
  class FootnoteTag < Liquid::Tag
    include FootnoteUtils

    def initialize(tag_name, id, tokens)
      raise(SyntaxError.new("invalid footnote ID")) if ['"', '<', '>'].any? { |c| id.include?(c) }
      @id = id.strip unless id.strip.empty?
      super
    end

    def render(context)
      if @id.nil?
        context.registers[:fn] ||= 0
        context.registers[:fn] = context.registers[:fn].next
        @id = context.registers[:fn]
      end
      "<sup><a href=\"##{footnote_id(context, @id)}\" class=\"footnote\" id=\"#{backlink_id(context, @id)}\">#{@id}</a></sup>"
    end
  end

  class FootnoteBody < Liquid::Block
    include FootnoteUtils

    def initialize(tag_name, id, tokens)
      raise(SyntaxError.new("invalid footnote ID")) if ['"', '<', '>'].any? { |c| id.include?(c) }
      @id = id.strip unless id.strip.empty?
      super
    end

    def render(context)
      if @id.nil?
        context.registers[:fnbody] ||= 0
        context.registers[:fnbody] = context.registers[:fnbody].next
        @id = context.registers[:fnbody]
      end
      context.stack do
        body = super
        "<li id=\"#{footnote_id(context, @id)}\" class=\"footnotebody\" value=\"#{@id}\">#{body}<a href=\"##{backlink_id(context, @id)}\" class=\"backlink\">↩</a></li>"
      end
    end
  end

  class FootnoteList < Liquid::Block
    def render(context)
      context.stack do
        body = super
        site = context.registers[:site]
        converter = if site.respond_to?(:find_converter_instance)
                      site.find_converter_instance(Jekyll::Converters::Markdown)
                    else
                      site.getConverterImpl(Jekyll::Converters::Markdown)
                    end
        "<ol class=\"footnotelist\">#{converter.convert(body)}</ol>"
      end
    end
  end

  Liquid::Template.register_tag('fn', Jekyll::FootnoteTag)
  Liquid::Template.register_tag('footnotes', FootnoteList)
  Liquid::Template.register_tag('fnbody', FootnoteBody)
end

