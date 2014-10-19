require 'html/pipeline'
require 'redcarpet'
require 'den_den_markdown/filter'

class DenDenMarkdown::Filter::MarkdownFilter < HTML::Pipeline::TextFilter
  EXTENSIONS = {
  }.freeze

  class Renderer < Redcarpet::Render::HTML
  end

  def initialize(text, context = nil, result = nil)
    super text, context, result
    @text = @text.tr("\r", '')
    @markdown = Redcarpet::Markdown.new(Renderer, EXTENSIONS)
  end

  def call
    html = @markdown.render(@text)

    html
  end
end
