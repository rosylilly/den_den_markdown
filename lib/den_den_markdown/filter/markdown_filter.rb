require 'html/pipeline'
require 'redcarpet'
require 'den_den_markdown/filter'

class DenDenMarkdown::Filter::MarkdownFilter < HTML::Pipeline::TextFilter
  class Renderer < Redcarpet::Render::HTML
  end

  EXTENSIONS = {
    footnotes: true,
    tables: true,
    no_intra_emphasis: true
  }.freeze

  RENDERER_OPTIONS = {
    hard_wrap: true,
    xhtml: true
  }.freeze

  def initialize(text, context = nil, result = nil)
    super text, context, result
    @text = @text.tr("\r", '')
    @markdown = Redcarpet::Markdown.new(Renderer.new(RENDERER_OPTIONS), EXTENSIONS)
  end

  def call
    html = @markdown.render(@text)

    html
  end
end
