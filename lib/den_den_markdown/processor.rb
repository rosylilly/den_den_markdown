require 'html/pipeline'
require 'den_den_markdown'
require 'den_den_markdown/filter'

class DenDenMarkdown::Processor
  DEFAULT_FILTERS = [
    DenDenMarkdown::Filter::MarkdownFilter
  ].freeze

  def self.call(text, context = {})
    new(context).call(text)
  end

  def initialize(context = {})
    @default_context = context
    @filters = DEFAULT_FILTERS.dup
  end
  attr_reader :filters, :default_context

  def call(text, context = {})
    HTML::Pipeline.new(@filters, @default_context).call(text, context)
  end
end
