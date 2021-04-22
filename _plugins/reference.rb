module ReferenceUtils
  def page_hash(page)
    page['url'].hash.to_s(16)[-4,4]
  end

  def reference_id(context, id)
    "#{page_hash(context.registers[:page])}:rf:#{id}"
  end

  def backlink_id(context, id)
    "#{page_hash(context.registers[:page])}:rf-back:#{id}"
  end
end

module Jekyll
  class ReferenceTag < Liquid::Tag
    include ReferenceUtils

    def initialize(tag_name, id, tokens)
      raise(SyntaxError.new("invalid reference ID")) if ['"', '<', '>'].any? { |c| id.include?(c) }
      @id = id.strip unless id.strip.empty?
      super
    end

    def render(context)
      if @id.nil?
        context.registers[:rf] ||= 0
        context.registers[:rf] = context.registers[:rf].next
        @id = context.registers[:rf]
      end
      "<a href=\"##{reference_id(context, @id)}\" class=\"reference\" id=\"#{backlink_id(context, @id)}\">[#{@id}]</a>"
    end
  end

  class ReferenceBody < Liquid::Block
    include ReferenceUtils

    def initialize(tag_name, id, tokens)
      raise(SyntaxError.new("invalid reference ID")) if ['"', '<', '>'].any? { |c| id.include?(c) }
      @id = id.strip unless id.strip.empty?
      super
    end

    def render(context)
      if @id.nil?
        context.registers[:rfbody] ||= 0
        context.registers[:rfbody] = context.registers[:rfbody].next
        @id = context.registers[:rfbody]
      end
      context.stack do
        body = super
        "<a href=\"##{backlink_id(context, @id)}\" class=\"backlink\">[#{@id}]</a> #{body}<br/>"
      end
    end
  end

  class ReferenceList < Liquid::Block
    def render(context)
      context.stack do
        body = super
        site = context.registers[:site]
        converter = if site.respond_to?(:find_converter_instance)
                      site.find_converter_instance(Jekyll::Converters::Markdown)
                    else
                      site.getConverterImpl(Jekyll::Converters::Markdown)
                    end
        "#{converter.convert(body)}"
      end
    end
  end

  Liquid::Template.register_tag('rf', Jekyll::ReferenceTag)
  Liquid::Template.register_tag('references', ReferenceList)
  Liquid::Template.register_tag('rfbody', ReferenceBody)
end
