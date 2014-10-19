require 'minitest'
require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/power_assert'
require 'minitest/reporters'

Minitest::Reporters.use!([Minitest::Reporters::ProgressReporter.new(color: true)])

require 'den_den_markdown'
