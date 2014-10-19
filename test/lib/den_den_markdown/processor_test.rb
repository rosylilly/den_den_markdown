require 'test_helper'

describe DenDenMarkdown::Processor do
  describe 'pass defined specs' do
    def call(orig)
      DenDenMarkdown::Processor.call(orig)
    end

    specs_dir = File.join(File.dirname(__FILE__), '../../../spec/*')
    Dir.glob(specs_dir).each do |spec|
      name = File.basename(spec)

      it "#{name}" do
        orig = File.read(spec + '/orig.mkd')
        result = File.read(spec + '/result.html').gsub("\n\n", "\n")
        output = call(orig)[:output].to_s.gsub("\n\n", "\n")

        assert_equal result, output
      end
    end
  end
end
